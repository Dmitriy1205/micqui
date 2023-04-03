import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:micqui/features/auth/bloc/auth_bloc.dart';
import 'package:micqui/features/create_profile/bloc/create_profile_bloc.dart';

import '../core/services/service_locator.dart';
import '../features/profile/presentation/bloc/profile_bloc.dart';

class Providers extends StatelessWidget {
  final Widget child;

  const Providers({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => sl<AuthBloc>(),
          lazy: false,
        ),
        BlocProvider(
          create: (context) => sl<ProfileBloc>(),
          lazy: false,
        ),
        BlocProvider(create: (context) => sl<CreateProfileBloc>(),
        lazy: false,)
      ],
      child: child,
    );
  }
}
