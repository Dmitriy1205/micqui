import 'package:micqui/core/constants/exceptions.dart';
import 'package:micqui/data/models/bucket/bucket.dart';
import 'package:micqui/data/providers/firestore_provider.dart';

class QuestionRepository {
  final FirestoreDataProvider _firestore;

  QuestionRepository({required FirestoreDataProvider firestore})
      : _firestore = firestore;

  Future<Bucket> getBucket({required String bucketId}) async {
    try {
      final data =
          await _firestore.read(collectionName: 'buckets', docId: bucketId);
      if (!data.exists) {
        throw BadRequestException(message: 'code is not correct');
      }
      return Bucket.fromJson(data.data() ?? {});
    } on BadRequestException catch (e) {
      throw BadRequestException(message: e.message);
    }
  }

  Future<void> setFields(
      {required String bucketId,
      required String userId,
      required String userName,
      required bool isCompleted}) async {
    try {
      Map<String, dynamic> data = {
        'bucketId': bucketId,
        'joined': true,
        'userId': userId,
        'completed': isCompleted,
        'answers': []
      };
      await _firestore.set(
          collectionName: 'answers', docId: '$userName-$bucketId', data: data);
    } on BadRequestException catch (e) {
      throw BadRequestException(message: e.message);
    }
  }

  Future<void> setAnswers(
      {required String bucketId,
      required String userEmail,
      required String question,
      required int? answerIndex,
      required String answer}) async {
    try {
      final answerRef = await _firestore.read(
          collectionName: 'answers', docId: '$userEmail-$bucketId');

      List<dynamic>? data = answerRef.data()!['answers'] as List<dynamic>;

      if (answerIndex != null &&
          answerIndex >= 0 &&
          answerIndex < data.length) {
        Map<String, dynamic> updatedData = {
          'question': question,
          'answer': answer
        };
        data[answerIndex] = updatedData;

        await _firestore.updateSingleField(
            collectionName: 'answers',
            docId: '$userEmail-$bucketId',
            answer: 'answers',
            data: data);
      } else {
        Map<String, dynamic> singleData = {
          'question': question,
          'answer': answer
        };
        data.add(singleData);
        await _firestore.update(
            collectionName: 'answers',
            docId: '$userEmail-$bucketId',
            nameFieldToUpdate: 'answers',
            data: data);
      }
    } on BadRequestException catch (e) {
      throw BadRequestException(message: e.message);
    }
  }

  completeQuiz({
    required bool isCompleted,
    required String bucketId,
    required String userEmail,
  }) async {
    try {
      await _firestore.update(
          collectionName: 'answers',
          docId: '$userEmail-$bucketId',
          nameFieldToUpdate: 'completed',
          data: isCompleted);
    } on BadRequestException catch (e) {
      throw BadRequestException(message: e.message);
    }
  }
}
