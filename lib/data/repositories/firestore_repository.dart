import 'package:cloud_firestore/cloud_firestore.dart';

import '../../core/constants/exceptions.dart';
import '../models/user/user_model.dart';

class FirestoreRepository {
  final FirebaseFirestore _firestore;

  FirestoreRepository({required FirebaseFirestore firestore})
      : _firestore = firestore;

  Future<UserModel> getProfile(String id) async {
    try {
      final data = await _firestore.collection('users').doc(id).get();
      if (!data.exists) {
        return const UserModel();
      }
      return UserModel.fromJson(data.data()?['profile'] ?? {});
    } on FirebaseException catch (e) {
      throw BadRequestException(message: e.message!);
    } on Exception catch (e) {
      throw BadRequestException(message: e.toString());
    }
  }

  Future<void> setProfile(String id, data) async {
    try {
      await _firestore
          .collection('users')
          .doc(id)
          .set({'profile': data}, SetOptions(merge: true));
    } on FirebaseException catch (e) {
      throw BadRequestException(message: e.message!);
    }
  }
}
