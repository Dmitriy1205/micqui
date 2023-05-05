import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:micqui/core/extensions/validation.dart';
import 'package:micqui/features/home/presentation/quiz_round_end.dart';

import '../../../core/constants/colors.dart';
import '../../../core/constants/strings.dart';
import '../../../core/themes/theme.dart';
import '../../../core/widgets/app_elevated_button.dart';
import '../../../data/models/questions/questions.dart';
import '../../profile/presentation/bloc/profile_bloc.dart';
import '../bloc/quiz_bloc/quiz_bloc.dart';

class QuizRounds extends StatefulWidget {
  final List<Questions> questions;

  const QuizRounds({Key? key, required this.questions}) : super(key: key);

  @override
  State<QuizRounds> createState() => _QuizRoundsState();
}

class _QuizRoundsState extends State<QuizRounds> {
  final _pageController = PageController();
  List<TextEditingController> controllers = [];
  List<GlobalKey<FormState>> formKeys = [];
  int _counter = 0;

  @override
  void initState() {
    controllers = List.generate(widget.questions.length, (_) {
      var controller = TextEditingController();
      formKeys.add(GlobalKey<FormState>());
      controller.addListener(_updateCounter);
      return controller;
    });

    super.initState();
  }

  void _updateCounter() {
    int counter = 0;
    for (var controller in controllers) {
      counter += controller.text.length;
    }

    setState(() {
      _counter = counter;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: PageView(
        controller: _pageController,
        pageSnapping: false,
        physics: const NeverScrollableScrollPhysics(),
        children: List.generate(
          widget.questions.length,
          (index) => BlocListener<QuizBloc, QuizState>(
            listener: (context, state) {
              state.maybeMap(
                  loading: (_) => const Center(
                        child: CircularProgressIndicator(),
                      ),
                  success: (_) {
                    index == widget.questions.length - 1
                        ? Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const QuizRoundsEnd()))
                        : _pageController.nextPage(
                            duration: const Duration(milliseconds: 200),
                            curve: Curves.ease);
                  },
                  orElse: () {});
            },
            child: Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.transparent,
                leading: IconButton(
                  icon: const FaIcon(
                    FontAwesomeIcons.arrowLeft,
                    color: AppColors.text,
                  ),
                  onPressed: () {
                    index == 0
                        ? Navigator.pop(context)
                        : _pageController.previousPage(
                            duration: const Duration(milliseconds: 200),
                            curve: Curves.ease);
                  },
                ),
              ),
              body: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 22),
                child: ListView(
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    RichText(
                      text: TextSpan(
                        style: AppTheme.themeData.textTheme.headlineMedium!
                            .copyWith(
                          color: AppColors.text,
                          fontSize: 26,
                          fontWeight: FontWeight.w500,
                        ),
                        children: [
                          const TextSpan(
                            text: '${AppText.session} ',
                          ),
                          TextSpan(
                            text: '${index + 1}',
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text: '/${widget.questions.length}',
                            style: AppTheme.themeData.textTheme.headlineMedium!
                                .copyWith(
                                    color: AppColors.text,
                                    fontSize: 22,
                                    fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 61,
                    ),
                    Text(widget.questions[index].name!,
                        style: AppTheme.themeData.textTheme.titleMedium!
                            .copyWith(fontSize: 22)),
                    const SizedBox(
                      height: 185,
                    ),
                    Form(
                      key: formKeys[index],
                      child: TextFormField(
                        maxLines: 7,
                        maxLength: 250,
                        controller: controllers[index],
                        style: AppTheme.themeData.textTheme.bodyMedium,
                        decoration: InputDecoration(
                          hintText: AppText.yourAnwer,
                          hintStyle: AppTheme.themeData.textTheme.bodyMedium!
                              .copyWith(color: AppColors.lightGrey),
                          counterText: '${controllers[index].text.length}/250',
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 20, horizontal: 20),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: const BorderSide(
                                width: 3,
                                color: AppColors.veryLightGrey,
                              )),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: const BorderSide(
                              width: 3,
                              color: AppColors.primary,
                            ),
                          ),
                          errorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: const BorderSide(
                                width: 3,
                                color: AppColors.accent,
                              )),
                          focusedErrorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: const BorderSide(
                                width: 3,
                                color: AppColors.accent,
                              )),
                        ),
                        onChanged: (text) {
                          _updateCounter();
                        },
                        validator: context.validateFieldNotEmpty,
                      ),
                    ),
                    const SizedBox(
                      height: 97,
                    ),
                    // index == widget.questions.length - 1
                    //     ? AppElevatedButton(
                    //         text: AppText.finish,
                    //         onPressed: () {
                    //           Navigator.pushReplacement(
                    //               context,
                    //               MaterialPageRoute(
                    //                   builder: (context) =>
                    //                       const QuizRoundsEnd()));
                    //         },
                    //       )
                    //     :
                    Padding(
                      padding: const EdgeInsets.all(5),
                      child: AppElevatedButton(
                        text: index == widget.questions.length - 1
                            ? AppText.finish
                            : AppText.next,
                        onPressed: () {
                          if (!formKeys[index].currentState!.validate()) {
                            return;
                          }
                          formKeys[index].currentState!.save();
                          context.read<QuizBloc>().add(QuizEvent.setAnswer(
                              userId:
                                  context.read<ProfileBloc>().state.user!.id!,
                              question: widget.questions[index].name!,
                              answer: controllers[index].text,
                              index: index));
                          // _pageController.nextPage(
                          //     duration: const Duration(milliseconds: 200),
                          //     curve: Curves.ease);
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 43,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
