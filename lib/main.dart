import 'package:bloc/bloc.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:micqui/bloc_observer.dart';

import 'app/app.dart';
import 'core/services/service_locator.dart' as sl;
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = GlobalObserver();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await sl.init();
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(App());
}
