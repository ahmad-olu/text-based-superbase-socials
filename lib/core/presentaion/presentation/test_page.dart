import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:geat/core/constants/paths.dart';
import 'package:geat/post/domain/text_post_model.dart';

class TestPage extends StatelessWidget {
  const TestPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: TestView(),
    );
  }
}

class TestView extends StatefulWidget {
  const TestView({super.key});

  @override
  State<TestView> createState() => _TestViewState();
}

class _TestViewState extends State<TestView> {
  Future<void> checkUsername() async {
    final values =
        await FirebaseFirestore.instance.collection(Paths.users).get();
    // .where(username, isEqualTo: username)

    final List<DocumentSnapshot> document = values.docs;
    if (document.isNotEmpty) {
      for (final data in document) {
        final Map<String, dynamic>? value =
            data.data() as Map<String, dynamic>?;
        final takenUsername = value;
        if (takenUsername != null) {
          if (takenUsername.containsValue('olaolukotun')) {
            log('username taken');
          }
        }
        //log('username: ${takenUsername!['username']}');

        //log(v.toString());
      }
    } else {
      log('doc empty');
    }
  }

  Future<void> login() async {
    try {
      final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: 'arabj@g.com',
        password: 'Shemalep@20',
      );
      final user = credential.user;
      log(user.toString());
    } on FirebaseAuthException catch (e) {
      log(e.message.toString());
    }
  }

  void getUserTextPost() {
    try {
      final authorRef = FirebaseFirestore.instance
          .collection(Paths.users)
          .doc('users/fvvNEOp3NOf7mF6wMNYDhdb30t63');
      final a = FirebaseFirestore.instance
          .collection(Paths.textPosts)
          //.where('author', isEqualTo: authorRef)
          .orderBy('date', descending: true)
          .snapshots()
          .map(
            (snap) =>
                snap.docs.map((doc) => TextPost.fromFireStore(doc)).toList(),
          );
      a.forEach((element) {
        log(element.toString());
      });
    } on FirebaseException catch (e) {
      log(e.message.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('user you later'),
          const SizedBox(
            height: 12,
          ),
          Center(
            child: TextButton(
              onPressed: () async => getUserTextPost(),
              child: const Text('fetch post'),
            ),
          ),
        ],
      ),
    );
  }
}
