const functions = require("firebase-functions");
const admin = require('firebase-admin');

admin.initializeApp();

exports.onFollowUser = functions.firestore
  .document('/followers/{userId}/userFollowers/{followerId}')
  .onCreate(async (_, context) => {
    const userId = context.params.userId;
    const followerId = context.params.followerId;

    // Increment followed user's followers count by 1.
    const followedUserRef = admin.firestore().collection('users').doc(userId);
    const followedUserDoc = await followedUserRef.get();
    if (followedUserDoc.get('followers') !== undefined) {
      followedUserRef.update({
        followers: followedUserDoc.get('followers') + 1,
      });
    } else {
      followedUserRef.update({ followers: 1 });
    }

    // Increment user's following count by 1.
    const userRef = admin.firestore().collection('users').doc(followerId);
    const userDoc = await userRef.get();
    if (userDoc.get('following') !== undefined) {
      userRef.update({ following: userDoc.get('following') + 1 });
    } else {
      userRef.update({ following: 1 });
    }

    // Add followed user's textPosts to user's textPost feed.
    const followedUserTextPostsRef = admin
      .firestore()
      .collection('textPosts')
      .where('author', '==', followedUserRef);
    const userTextFeedRef = admin
      .firestore()
      .collection('feeds')
      .doc(followerId)
      .collection('userTextFeed');
    const followedUserTextPostsSnapshot = await followedUserTextPostsRef.get();
    followedUserTextPostsSnapshot.forEach((doc) => {
      if (doc.exists) {
        userTextFeedRef.doc(doc.id).set(doc.data());
      }
    });
    // Add followed user's comicPosts to user's comicPost feed.
    const followedUserComicPostsRef = admin
      .firestore()
      .collection('comicPosts')
      .where('author', '==', followedUserRef);
    const userComicFeedRef = admin
      .firestore()
      .collection('feeds')
      .doc(followerId)
      .collection('userComicFeed');
    const followedUserComicPostsSnapshot = await followedUserComicPostsRef.get();
    followedUserComicPostsSnapshot.forEach((doc) => {
      if (doc.exists) {
        userComicFeedRef.doc(doc.id).set(doc.data());
      }
    });
  });

exports.onUnfollowUser = functions.firestore
  .document('/followers/{userId}/userFollowers/{followerId}')
  .onDelete(async (_, context) => {
    const userId = context.params.userId;
    const followerId = context.params.followerId;

    // Decrement unfollowed user's followers count by -1.
    const followedUserRef = admin.firestore().collection('users').doc(userId);
    const followedUserDoc = await followedUserRef.get();
    if (followedUserDoc.get('followers') !== undefined) {
      followedUserRef.update({
        followers: followedUserDoc.get('followers') - 1,
      });
    } else {
      followedUserRef.update({ followers: 0 });
    }

    // Decrement user's following count by -1.
    const userRef = admin.firestore().collection('users').doc(followerId);
    const userDoc = await userRef.get();
    if (userDoc.get('following') !== undefined) {
      userRef.update({ following: userDoc.get('following') - 1 });
    } else {
      userRef.update({ following: 0 });
    }

    // Remove unfollowed user's textPosts from user's textPost feed.
    const userTextFeedRef = admin
      .firestore()
      .collection('feeds')
      .doc(followerId)
      .collection('userTextFeed')
      .where('author', '==', followedUserRef);
    const userTextPostsSnapshot = await userTextFeedRef.get();
    userTextPostsSnapshot.forEach((doc) => {
      if (doc.exists) {
        doc.ref.delete();
      }
    });
    // Remove unfollowed user's comicPosts from user's comicPost feed.
    const userComicFeedRef = admin
      .firestore()
      .collection('feeds')
      .doc(followerId)
      .collection('userComicFeed')
      .where('author', '==', followedUserRef);
    const userComicPostsSnapshot = await userComicFeedRef.get();
    userComicPostsSnapshot.forEach((doc) => {
      if (doc.exists) {
        doc.ref.delete();
      }
    });
  });

exports.onCreateTextPost = functions.firestore
  .document('/textPosts/{textPostId}')
  .onCreate(async (snapshot, context) => {
    const textPostId = context.params.postId;

    // Get author id.
    const authorRef = snapshot.get('author');
    const authorId = authorRef.path.split('/')[1];

    // Add new post to feeds of all followers.
    const userFollowersRef = admin
      .firestore()
      .collection('followers')
      .doc(authorId)
      .collection('userFollowers');
    const userFollowersSnapshot = await userFollowersRef.get();
    userFollowersSnapshot.forEach((doc) => {
      admin
        .firestore()
        .collection('feeds')
        .doc(doc.id)
        .collection('userTextFeed')
        .doc(textPostId)
        .set(snapshot.data());
    });
  });

exports.onCreateComicPost = functions.firestore
  .document('/comicPosts/{comicPostId}')
  .onCreate(async (snapshot, context) => {
    const comicPostId = context.params.postId;

    // Get author id.
    const authorRef = snapshot.get('author');
    const authorId = authorRef.path.split('/')[1];

    // Add new post to feeds of all followers.
    const userFollowersRef = admin
      .firestore()
      .collection('followers')
      .doc(authorId)
      .collection('userFollowers');
    const userFollowersSnapshot = await userFollowersRef.get();
    userFollowersSnapshot.forEach((doc) => {
      admin
        .firestore()
        .collection('feeds')
        .doc(doc.id)
        .collection('userComicFeed')
        .doc(comicPostId)
        .set(snapshot.data());
    });
  });

exports.onUpdateTextPost = functions.firestore
  .document('/textPosts/{postId}')
  .onUpdate(async (snapshot, context) => {
    const postId = context.params.postId;

    // Get author id.
    const authorRef = snapshot.after.get('author');
    const authorId = authorRef.path.split('/')[1];

    // Update post data in each follower's feed.
    const updatedPostData = snapshot.after.data();
    const userFollowersRef = admin
      .firestore()
      .collection('followers')
      .doc(authorId)
      .collection('userFollowers');
    const userFollowersSnapshot = await userFollowersRef.get();
    userFollowersSnapshot.forEach(async (doc) => {
      const postRef = admin
        .firestore()
        .collection('feeds')
        .doc(doc.id)
        .collection('userTextFeed');
      const postDoc = await postRef.doc(postId).get();
      if (postDoc.exists) {
        postDoc.ref.update(updatedPostData);
      }
    });
  });

exports.onUpdateComicPost = functions.firestore
  .document('/comicPosts/{postId}')
  .onUpdate(async (snapshot, context) => {
    const postId = context.params.postId;

    // Get author id.
    const authorRef = snapshot.after.get('author');
    const authorId = authorRef.path.split('/')[1];

    // Update post data in each follower's feed.
    const updatedPostData = snapshot.after.data();
    const userFollowersRef = admin
      .firestore()
      .collection('followers')
      .doc(authorId)
      .collection('userFollowers');
    const userFollowersSnapshot = await userFollowersRef.get();
    userFollowersSnapshot.forEach(async (doc) => {
      const postRef = admin
        .firestore()
        .collection('feeds')
        .doc(doc.id)
        .collection('userComicFeed');
      const postDoc = await postRef.doc(postId).get();
      if (postDoc.exists) {
        postDoc.ref.update(updatedPostData);
      }
    });
  });