import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:micqui/data/providers/firestore_provider.dart';
import 'package:micqui/data/repositories/storage_repository.dart';
import 'package:micqui/features/auth/bloc/auth_bloc.dart';
import 'package:micqui/features/auth/presentation/signin/widgets/google_signin_button/bloc/google_signin_bloc.dart';
import 'package:micqui/features/auth/presentation/signup/bloc/signup_bloc.dart';
import 'package:micqui/features/create_profile/bloc/create_profile_bloc.dart';
import 'package:micqui/features/home/bloc/quiz_bloc/quiz_bloc.dart';

import '../../data/repositories/question_repository.dart';
import '../../data/repositories/user_repository.dart';
import '../../features/auth/data/repository/auth_repository.dart';
import '../../features/auth/presentation/forgot_password/bloc/forgot_password_bloc.dart';
import '../../features/auth/presentation/signin/bloc/signin_bloc.dart';
import '../../features/auth/presentation/signin/widgets/apple_signin_button/bloc/apple_signin_bloc.dart';
import '../../features/home/bloc/home_bloc/home_bloc.dart';
import '../../features/profile/presentation/bloc/profile_bloc.dart';
import '../../features/profile/presentation/edit_profile/bloc/edit_profile_bloc.dart';

final sl = GetIt.instance;

Future<void> init() async {
  FirebaseAuth auth = FirebaseAuth.instance;
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  FirebaseStorage storage = FirebaseStorage.instance;

  //data provider
  sl.registerLazySingleton(() => FirestoreDataProvider(firestore: firestore));

  //Repositories
  sl.registerLazySingleton(() => AuthRepository(auth: auth));
  sl.registerLazySingleton(() => UserRepository(firestore: sl()));
  sl.registerLazySingleton(() => StorageRepository(storage: storage));
  sl.registerLazySingleton(() => QuestionRepository(firestore: sl()));

  //Blocs
  sl.registerLazySingleton(() => AuthBloc(authRepository: sl()));
  sl.registerFactory(() => SignupBloc(auth: sl(), authBloc: sl()));
  sl.registerFactory(() => SigninBloc(auth: sl()));
  sl.registerFactory(() => ForgotPasswordBloc(auth: sl()));
  sl.registerFactory(() => GoogleSigninBloc(auth: sl()));
  sl.registerFactory(() => AppleSigninBloc(auth: sl()));
  sl.registerLazySingleton(
      () => CreateProfileBloc(firestore: sl(), storage: sl(), authBloc: sl()));
  sl.registerLazySingleton(() =>
      ProfileBloc(firestore: sl(), authBloc: sl(), createProfileBloc: sl()));
  sl.registerLazySingleton(() => HomeBloc(profileBloc: sl(), repository: sl()));

  sl.registerFactory(
      () => EditProfileBloc(firestore: sl(), storage: sl(), profileBloc: sl()));
  sl.registerFactory(() => QuizBloc(questRepo: sl()));
}
