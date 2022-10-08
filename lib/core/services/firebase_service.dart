import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';

class FirebaseModule {
  FirebaseAuth get auth => FirebaseAuth.instance;

  FirebaseFirestore get database => FirebaseFirestore.instance;

  FirebaseStorage get storage => FirebaseStorage.instance;
}
