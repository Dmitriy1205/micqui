import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:micqui/core/constants/strings.dart';
import 'package:micqui/core/widgets/app_elevated_button.dart';
import 'package:micqui/data/models/bucket/bucket.dart';
import 'package:micqui/features/home/bloc/home_bloc/home_bloc.dart';
import 'package:micqui/features/home/presentation/quiz_rounds.dart';

import '../../../core/constants/colors.dart';
import '../../../core/themes/theme.dart';
import '../../profile/presentation/bloc/profile_bloc.dart';
import '../bloc/quiz_bloc/quiz_bloc.dart';

class QuizIntroduction extends StatefulWidget {
  const QuizIntroduction({Key? key}) : super(key: key);

  @override
  State<QuizIntroduction> createState() => _QuizIntroductionState();
}

class _QuizIntroductionState extends State<QuizIntroduction> {
  late Bucket bucket;

  @override
  void initState() {
    bucket = context.read<HomeBloc>().state.bucket!;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: IconButton(
            icon: const FaIcon(
              FontAwesomeIcons.arrowLeft,
              color: AppColors.text,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: BlocConsumer<QuizBloc, QuizState>(
          listener: (context, state) {
            state.maybeMap(
                loading: (_) => const Center(
                      child: CircularProgressIndicator(),
                    ),
                joined: (_) => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => QuizRounds(
                              questions: bucket.questions,
                            ))),
                orElse: () {});
          },
          builder: (context, state) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 22),
              child: Column(
                children: [
                  Text(
                    bucket.name!,
                    style: AppTheme.themeData.textTheme.headlineMedium!
                        .copyWith(color: AppColors.text, fontSize: 28),
                  ),
                  const SizedBox(
                    height: 42,
                  ),
                  Text(
                    bucket.description!,
                    style: AppTheme.themeData.textTheme.titleMedium,
                  ),
                  const SizedBox(
                    height: 42,
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'For ${bucket.category}s',
                      style: AppTheme.themeData.textTheme.titleMedium!
                          .copyWith(fontWeight: FontWeight.w500, fontSize: 16),
                    ),
                  ),
                  const Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          const FaIcon(
                            FontAwesomeIcons.question,
                            size: 25,
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Text(
                            AppText.questions,
                            style: AppTheme.themeData.textTheme.titleMedium!
                                .copyWith(
                                    fontWeight: FontWeight.w500, fontSize: 16),
                          ),
                        ],
                      ),
                      Text(
                        '${bucket.questions.length}',
                        style: AppTheme.themeData.textTheme.titleMedium!
                            .copyWith(
                                fontWeight: FontWeight.w500, fontSize: 16),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  AppElevatedButton(
                    text: AppText.start,
                    onPressed: () {
                      context.read<QuizBloc>().add(QuizEvent.setFields(
                          userId: context.read<ProfileBloc>().state.user!.id!));
                    },
                  ),
                  const SizedBox(
                    height: 43,
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
