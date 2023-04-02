import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:micqui/data/repositories/storage_repository.dart';
import 'package:micqui/features/auth/bloc/auth_bloc.dart';
import 'package:micqui/features/auth/presentation/signin/widgets/google_signin_button/bloc/google_signin_bloc.dart';
import 'package:micqui/features/auth/presentation/signup/bloc/signup_bloc.dart';

import '../../data/repositories/firestore_repository.dart';
import '../../features/auth/data/repository/auth_repository.dart';
import '../../features/auth/presentation/forgot_password/bloc/forgot_password_bloc.dart';
import '../../features/auth/presentation/signin/bloc/signin_bloc.dart';
import '../../features/auth/presentation/signin/widgets/apple_signin_button/bloc/apple_signin_bloc.dart';
import '../../features/home/bloc/home_bloc.dart';
import '../../features/profile/presentation/bloc/profile_bloc.dart';
import '../../features/profile/presentation/edit_profile/bloc/edit_profile_bloc.dart';

final sl = GetIt.instance;

Future<void> init() async {
  FirebaseAuth auth = FirebaseAuth.instance;
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  FirebaseStorage storage = FirebaseStorage.instance;

  //Repositories
  sl.registerLazySingleton(() => AuthRepository(auth: auth));
  sl.registerLazySingleton(() => FirestoreRepository(firestore: firestore));
  sl.registerLazySingleton(() => StorageRepository(storage: storage));

  //Blocs
  sl.registerFactory(() => AuthBloc(authRepository: sl()));
  sl.registerFactory(() => SignupBloc(auth: sl()));
  sl.registerFactory(() => SigninBloc(auth: sl()));
  sl.registerFactory(() => ForgotPasswordBloc(auth: sl()));
  sl.registerFactory(() => GoogleSigninBloc(auth: sl()));
  sl.registerFactory(() => AppleSigninBloc(auth: sl()));

  sl.registerFactory(() => ProfileBloc(firestore: sl(), authBloc: sl()));
  sl.registerFactory(() => HomeBloc(firestore: sl(), profileBloc: sl()));
  sl.registerFactory(
      () => EditProfileBloc(firestore: sl(), storage: sl(), profileBloc: sl()));
}
