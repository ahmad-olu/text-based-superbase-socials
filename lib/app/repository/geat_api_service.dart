import 'dart:io';

import 'package:dio/dio.dart';
import 'package:geat/app/constants/constants.dart';
import 'package:geat/app/model/model.dart';
import 'package:geat/app/provider/provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:retrofit/retrofit.dart';

part 'geat_api_service.g.dart';

@RestApi(baseUrl: RepoPath.baseURL)
abstract class GeatApiService {
  factory GeatApiService(Dio dio, {String baseUrl}) = _GeatApiService;
  @GET('/users/')
  Stream<User?> getCurrentUserStream();

  @GET('/users/')
  Future<User?> getCurrentUser();

  @GET('/users/username/{name}/')
  Future<bool> usernameCheck(@Path('name') String username);

  @GET('/users/is_following/{name}/')
  Future<bool> checkIfFollowing(@Path('name') String username);

  @POST('/users/')
  @FormUrlEncoded()
  Future<User> register(@Field() String email, @Field() String username,
      @Field() String password);

  @POST('/login/')
  @FormUrlEncoded()
  Future<Token> walkIn(
      @Field('username') String email, @Field() String password);

  @PATCH('/users/update_username/')
  Future<User> updateUsername(@Field() String username);

  @PATCH('/users/update_email/')
  Future<User> updateEmail(@Field() String email);

  @PATCH('/users/update_password/')
  Future<User> updatePassword(@Field() String password);

  @POST('/users/follow/')
  Future<User?> followUser(@Field() String followUserID);

  @DELETE('/users/un_follow/')
  Future<void> unFollowUser(@Field() String unFollowUserID);

  @GET('/posts/')
  Future<List<Post>> getPosts();

  @GET('/posts/')
  Future<List<Post>> getUserFeeds();

  @GET('/posts/{id}/')
  Future<Post> getSinglePost(@Path('id') String postID);

  @POST('/posts/')
  Future<Post> createPost(@Body() Post post);

  @PUT('/posts/{id}/')
  Future<Post> updatePost(@Body() Post post, @Path('id') String postID);

  @DELETE('/posts/{id}/')
  Future<void> deletePost(@Path('id') String postID);

  @GET('/comments/{id}/')
  Future<List<Comment>> getComment(@Path('id') String postID);

  @POST('/comments/')
  Future<Comment> createComment(@Body() Comment comment);

  @DELETE('/comments/{id}/')
  Future<void> deleteComment(@Path('id') String postID);

  @GET('/re_imagined/')
  Future<List<ReImagined>> getUserReImaginedPost();

  @GET('/re_imagined/all/{id}/')
  Future<List<ReImagined>> getReImaginedPost(@Path('id') String postID);

  @GET('/re_imagined/{id}/')
  Future<ReImagined> getSingleReImaginedPost(@Path('id') String postID);

  @POST('/re_imagined/')
  Future<ReImagined> createReImaginedPost(@Body() ReImagined post);

  @PUT('/re_imagined/{id}/')
  Future<ReImagined> updateReImaginedPost(
      @Body() ReImagined post, @Path('id') String postID);

  @DELETE('/re_imagined/{id}/')
  Future<void> deleteReImaginedPost(@Path('id') String postID);

  @POST('/likes/')
  Future<Likes> createLike(@Body() Likes like);

  @POST('/likes/re_imagined/')
  Future<Likes> createReImaginedLike(@Body() Likes like);

  @GET('/likes/{id}/')
  Future<int> likesCount(@Path('id') String postID);

  @GET('/likes/re_imagined/{id}/')
  Future<int> reImaginedLikesCount(@Path('id') String postID);

  @DELETE('/likes/{id}/')
  Future<void> deleteLike(@Path('id') String postID);

  @DELETE('/likes/re_imagined/{id}/')
  Future<void> deleteReImaginedLike(@Path('id') String postID);

  @GET('/likes/liked/{id}/')
  Future<bool> checkIfLike(@Path('id') String postID);

  @GET('/notifications/')
  Future<List<Notification>> getNotifications();

  @POST('/feedback/')
  Future<FeedBack> createFeedback(@Body() FeedBack feedBack);

  @POST('/search/')
  Future<SearchResult> search(@Field() String keyword);

  @POST('/image_upload/')
  Future<List<String>> uploadMultipleImages(@Path() List<File> images);

  @POST('/image_upload/single_image/')
  Future<String> uploadImage(@Path() File image);

  @POST('/image_upload/profile/')
  Future<String> profileImage(@Field() String url, @Path() File image);
}

final charadeApiServicesProvider = Provider<GeatApiService>((ref) {
  final dioInstance = ref.watch(dioInstanceProvider);
  return GeatApiService(dioInstance);
});
