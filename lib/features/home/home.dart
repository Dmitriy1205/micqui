import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:micqui/core/constants/colors.dart';
import 'package:micqui/core/constants/strings.dart';
import 'package:micqui/core/extensions/validation.dart';
import 'package:micqui/core/widgets/app_elevated_button.dart';
import 'package:micqui/features/home/presentation/quiz_introduction.dart';
import 'package:micqui/features/home/widgets/qr_scanner.dart';
import 'package:micqui/features/profile/profile.dart';

import '../../core/themes/theme.dart';
import 'bloc/home_bloc/home_bloc.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final _formKey = GlobalKey<FormState>();
  late TextEditingController _textController  ;
  String codeToJoin = '';
  @override
  void initState() {
    _textController = TextEditingController(text: codeToJoin);
    super.initState();
  }

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: BlocConsumer<HomeBloc, HomeState>(
          listener: (context, state) {
            state.maybeMap(
                error: (e) => ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        backgroundColor: AppColors.accent,
                        duration: const Duration(seconds: 5),
                        content: Text(
                          e.error,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                success: (_) => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const QuizIntroduction())),
                orElse: () {});
          },
          builder: (context, state) {
            return state.maybeMap(
              loading: (_) => const Center(
                child: CircularProgressIndicator(),
              ),
              orElse: () => Column(
                children: [
                  Container(
                    height: 87,
                    color: AppColors.text,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '${AppText.hello} ${state.user?.nickName}',
                            style: AppTheme.themeData.textTheme.headlineMedium,
                            overflow: TextOverflow.ellipsis,
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const Profile(),
                                ),
                              );
                            },
                            child: SizedBox(
                              width: 48,
                              height: 48,
                              child: state.user?.avatar == null ||
                                      state.user!.avatar!.isEmpty
                                  ? CircleAvatar(
                                      radius: 40,
                                      backgroundColor:
                                          state.user?.property?['color'],
                                      child: Center(
                                        child: Text(
                                          state.user?.property?['symbol'] ?? '',
                                          style: const TextStyle(fontSize: 25),
                                        ),
                                      ),
                                    )
                                  : ClipRRect(
                                      borderRadius: BorderRadius.circular(40),
                                      child: Image.network(
                                        state.user!.avatar!,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 49,
                  ),
                  Center(
                    child: Text(
                      AppText.enterBucketCode,
                      style: AppTheme.themeData.textTheme.headlineMedium!
                          .copyWith(color: AppColors.text, fontSize: 28),
                    ),
                  ),
                  const Spacer(),
                  Form(
                    key: _formKey,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 22),
                      child: TextFormField(
                        controller: _textController,
                        style: AppTheme.themeData.textTheme.headlineMedium!
                            .copyWith(color: AppColors.text),
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          contentPadding:
                              const EdgeInsets.symmetric(vertical: 15),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: const BorderSide(
                                width: 2,
                                color: AppColors.text,
                              )),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: const BorderSide(
                              width: 2,
                              color: AppColors.primary,
                            ),
                          ),
                          errorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: const BorderSide(
                                width: 2,
                                color: AppColors.accent,
                              )),
                          focusedErrorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: const BorderSide(
                                width: 2,
                                color: AppColors.accent,
                              )),
                        ),
                        onChanged: (text) {
                          _textController.value =
                              _textController.value.copyWith(
                            text: text.toUpperCase(),
                            selection:
                                TextSelection.collapsed(offset: text.length),
                          );
                        },
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(9),
                        ],
                        validator: context.validateFieldNotEmpty,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 22),
                    child: AppElevatedButton(
                        text: AppText.join,
                        onPressed: () {
                          if (!_formKey.currentState!.validate()) {
                            return;
                          }
                          _formKey.currentState!.save();
                          context.read<HomeBloc>().add(
                              HomeEvent.join(bucketId: _textController.text, user: state.user!));
                        }),
                  ),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 22),
                    child: InkWell(
                      onTap: () {
                        qrScannerSheet(context);
                      },
                      child: Ink(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: AppColors.text),
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width,
                          height: 46,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              const FaIcon(
                                FontAwesomeIcons.qrcode,
                                size: 30,
                                color: AppColors.background,
                              ),
                              Text(
                                AppText.scanQr,
                                style: AppTheme.themeData.textTheme.labelMedium,
                              ),
                              const SizedBox(),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 46,
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  Future<dynamic> qrScannerSheet(BuildContext context) {
    return showModalBottomSheet(
        isScrollControlled: true,
        useSafeArea: true,
        context: context,
        builder: (context) {
          return SizedBox(
            height: MediaQuery.of(context).size.height / 1.05,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(40),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        icon: const FaIcon(
                          FontAwesomeIcons.xmark,
                          size: 24,
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                      Text(
                        AppText.scanQr,
                        style: AppTheme.themeData.textTheme.titleMedium!
                            .copyWith(
                                fontSize: 24, fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(
                        width: 24,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 116,
                ),
                 SizedBox(
                  width: double.infinity,
                  height: 339,
                  child: QrScanner(user: context.read<HomeBloc>().state.user!,),
                ),
                const SizedBox(
                  height: 30,
                ),
              ],
            ),
          );
        });
  }
}
