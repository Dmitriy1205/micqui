import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';

import '../../core/constants/exceptions.dart';

class StorageRepository {
  final FirebaseStorage storage;

  StorageRepository({required this.storage});

  Future<String> upload(File? source, String destination) async {
    try {
      final metadata = SettableMetadata(
        contentType: 'image/jpeg',
        customMetadata: {'picked-file-path': source!.path},
      );
      UploadTask task = storage
          .ref(destination)
          .putData(await source.readAsBytes(), metadata);
      await task;
      return await task.snapshot.ref.getDownloadURL();
    } on FirebaseException catch (e) {
      throw BadRequestException(message: e.message.toString());
    }
  }
}
