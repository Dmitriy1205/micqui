
import '../../core/constants/exceptions.dart';
import '../models/user/user_model.dart';
import '../providers/firestore_provider.dart';

class UserRepository {
  final FirestoreDataProvider _firestore;

  UserRepository({required FirestoreDataProvider firestore})
      : _firestore = firestore;

  Future<UserModel> getProfile(String id) async {
    try {
      final data = await _firestore.read(collectionName: 'users', docId: id);
      if (!data.exists) {
        return const UserModel();
      }
      return UserModel.fromJson(data.data()?['profile'] ?? {});
    } on BadRequestException catch (e) {
      throw BadRequestException(message: e.toString());
    }
  }

  Future<void> setProfile(String id, data) async {
    try {
      await _firestore.update(
          collectionName: 'users',
          docId: id,
          nameFieldToUpdate: 'profile',
          data: data);
    } on BadRequestException catch (e) {
      throw BadRequestException(message: e.message);
    }
  }
}
