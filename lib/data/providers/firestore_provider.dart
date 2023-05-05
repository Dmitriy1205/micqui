import 'package:cloud_firestore/cloud_firestore.dart';

import '../../core/constants/exceptions.dart';

class FirestoreDataProvider {
  final FirebaseFirestore _firestore;

  FirestoreDataProvider({required FirebaseFirestore firestore})
      : _firestore = firestore;

  Future<DocumentSnapshot<Map<String, dynamic>>> read(
      {required String collectionName, required String docId}) async {
    try {
      final data = await _firestore.collection(collectionName).doc(docId).get();
      return data;
    } on FirebaseException catch (e) {
      throw BadRequestException(message: e.message!);
    }
  }

  Future<void> update({
    required String collectionName,
    required String docId,
    required String nameFieldToUpdate,
    required data,
  }) async {
    try {
      await _firestore
          .collection(collectionName)
          .doc(docId)
          .set({nameFieldToUpdate: data}, SetOptions(merge: true));
    } on FirebaseException catch (e) {
      throw BadRequestException(message: e.message!);
    }
  }

  Future<void> set({
    required String collectionName,
    required String docId,
    required data,
  }) async {
    try {
      await _firestore.collection(collectionName).doc(docId).set(data);
    } on FirebaseException catch (e) {
      throw BadRequestException(message: e.message!);
    }
  }

  Future<void> updateSingleField({
    required String collectionName,
    required String docId,
    required String answer,
    required data,
  }) async {
    try {
      await _firestore
          .collection(collectionName)
          .doc(docId)
          .update({answer: data});
    } on FirebaseException catch (e) {
      throw BadRequestException(message: e.message!);
    }
  }
}
