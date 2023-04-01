import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';

import '../../core/constants/exceptions.dart';

class StorageRepository {
  final FirebaseStorage storage;

  StorageRepository({required this.storage});

  Future<String> upload(File? source, String destination) async {
    try {
      UploadTask task = storage.ref(destination).putFile(source!);
      await task;
      return await task.snapshot.ref.getDownloadURL();
    } on FirebaseException catch (e) {
      throw BadRequestException(message: e.message.toString());
    }
  }
}
