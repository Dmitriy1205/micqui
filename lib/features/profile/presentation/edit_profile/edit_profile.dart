import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:micqui/core/constants/colors.dart';
import 'package:micqui/features/profile/presentation/edit_profile/bloc/edit_profile_bloc.dart';
import 'package:micqui/features/profile/presentation/edit_profile/widgets/date_picker.dart';
import 'package:micqui/features/profile/presentation/edit_profile/widgets/image_picker/profile_Image_picker.dart';

import '../../../../core/constants/strings.dart';
import '../../../../core/services/service_locator.dart';
import '../../../../core/themes/theme.dart';
import 'package:date_format/date_format.dart';

import '../../../../core/widgets/loading_indicator.dart';
import '../../../../data/models/user/user_model.dart';

class EditProfile extends StatefulWidget {
  final UserModel? user;

  const EditProfile({
    Key? key,
    this.user,
  }) : super(key: key);

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  final EditProfileBloc _bloc = sl<EditProfileBloc>();

  final _formKey = GlobalKey<FormState>();

  final _nameController = TextEditingController();

  final _dateController = TextEditingController();

  late int age;

  final List<String> countries = ['Ukraine', 'Spain', 'Singapore', 'Brazil'];

  late String? selectedCountry;

  @override
  void initState() {
    _nameController.text = widget.user!.fullName!;
    _dateController.text = widget.user!.dateOfBirth!;
    selectedCountry = widget.user!.country!;
    super.initState();
  }

  @override
  void dispose() {
    _nameController.dispose();
    _dateController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.text,
      body: BlocConsumer<EditProfileBloc, EditProfileState>(
        bloc: _bloc,
        listener: (context, state) {
          state.maybeMap(
              success: (_) {
                return Navigator.pop(context);
              },
              error: (e) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    backgroundColor: AppColors.accent,
                    duration: const Duration(seconds: 5),
                    content: Text(
                      e.error,
                      textAlign: TextAlign.center,
                    ),
                  ),
                );
              },
              orElse: () {});
        },
        builder: (context, state) {
          return state.maybeMap(
            loading: (_) => const LoadingIndicator(),
            orElse: () => SingleChildScrollView(
              child: SizedBox(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: ClipRRect(
                  child: Stack(
                    children: [
                      Positioned(
                        top: 127,
                        left: 0,
                        child: Transform.rotate(
                          alignment: Alignment.topLeft,
                          angle: pi / 5,
                          child: Container(
                            decoration: BoxDecoration(
                              color: AppColors.lightGrey,
                              borderRadius: BorderRadius.circular(30),
                            ),
                            width: 97,
                            height: 158,
                          ),
                        ),
                      ),
                      Positioned(
                        right: 0,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 8.0, right: 8),
                          child: Transform.rotate(
                            alignment: Alignment.topRight,
                            angle: pi / -5,
                            child: Container(
                              decoration: BoxDecoration(
                                color: AppColors.lightGrey,
                                borderRadius: BorderRadius.circular(30),
                              ),
                              width: 130,
                              height: 244,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 25, vertical: 36),
                        child: Column(
                          children: [
                            Container(
                              color: Colors.transparent,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  InkWell(
                                    borderRadius: BorderRadius.circular(20),
                                    onTap: () {
                                      Navigator.pop(context);
                                    },
                                    child: Ink(
                                      width: 40,
                                      height: 40,
                                      child: const Center(
                                        child: FaIcon(
                                          FontAwesomeIcons.arrowLeft,
                                          color: AppColors.background,
                                        ),
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    splashColor: Colors.transparent,
                                    borderRadius: BorderRadius.circular(20),
                                    onTap: () {
                                      if (!_formKey.currentState!.validate()) {
                                        return;
                                      }
                                      _formKey.currentState!.save();


                                      _bloc.add(EditProfileEvent.updateFields(
                                        file: state.image,
                                        image: widget.user?.avatar ?? '',
                                        name: _nameController.text,
                                        country: selectedCountry!,
                                        dateOfBirth: _dateController.text,
                                      ));
                                    },
                                    child: const SizedBox(
                                      width: 40,
                                      height: 40,
                                      child: Center(
                                        child: FaIcon(
                                          FontAwesomeIcons.check,
                                          color: AppColors.lightGreen,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 138,
                              width: 138,
                              child: ProfileImagePicker(
                                userImage: (file) {
                                  _bloc.add(
                                      EditProfileEvent.getImage(image: file));
                                },
                                avatar: const SizedBox(),
                                user: widget.user,
                              ),
                            ),
                            Flexible(
                              flex: 3,
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 15),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      widget.user!.firstName!,
                                      style: AppTheme
                                          .themeData.textTheme.headlineMedium,
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    const FaIcon(
                                      FontAwesomeIcons.pen,
                                      color: AppColors.background,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Text(
                              widget.user?.email ?? AppText.emptyEmail,
                              style: const TextStyle(
                                  color: AppColors.background,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14),
                            ),
                            const Flexible(
                              child: SizedBox(
                                height: 83,
                              ),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                color: AppColors.background,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(22),
                                child: Form(
                                  key: _formKey,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        AppText.additionalInfo,
                                        style: TextStyle(
                                            color: AppColors.text,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 15),
                                      ),
                                      const Text(
                                        AppText.surveyOrganizers,
                                        style: TextStyle(
                                            color: AppColors.text,
                                            fontWeight: FontWeight.w400,
                                            fontSize: 12),
                                      ),
                                      const SizedBox(
                                        height: 16,
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(bottom: 5.0),
                                        child: Text(
                                          AppText.fullName,
                                          style: TextStyle(
                                              color: AppColors.text,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 12),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 40,
                                        child: TextFormField(
                                          controller: _nameController,
                                          style: AppTheme
                                              .themeData.textTheme.labelSmall!
                                              .copyWith(fontSize: 14),
                                          decoration: const InputDecoration(
                                            contentPadding:
                                                EdgeInsets.symmetric(
                                                    vertical: 10,
                                                    horizontal: 10),
                                          ),
                                          validator: (value) {
                                            if (value!.isEmpty) {
                                              return ' Field cant be empty';
                                            }
                                            return null;
                                          },
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 16,
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(bottom: 5.0),
                                        child: Text(
                                          AppText.country,
                                          style: TextStyle(
                                              color: AppColors.text,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 12),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 40,
                                        child: DropdownButtonFormField<String>(
                                          value: selectedCountry,
                                          iconSize: 15,
                                          decoration: const InputDecoration(
                                            contentPadding:
                                                EdgeInsets.symmetric(
                                                    horizontal: 15,
                                                    vertical: 5),
                                          ),
                                          icon: const FaIcon(
                                              FontAwesomeIcons.chevronDown),
                                          items: countries
                                              .map(
                                                (country) =>
                                                    DropdownMenuItem<String>(
                                                  value: country,
                                                  child: Text(
                                                    country,
                                                    style: const TextStyle(
                                                        color: AppColors.text,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        fontSize: 12),
                                                  ),
                                                ),
                                              )
                                              .toList(),
                                          onChanged: (country) {
                                            selectedCountry = country;
                                          },
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 16,
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(bottom: 5.0),
                                        child: Text(
                                          AppText.dateOfBirth,
                                          style: TextStyle(
                                              color: AppColors.text,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 12),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 40,
                                        child: TextFormField(
                                          controller: _dateController,
                                          style: AppTheme
                                              .themeData.textTheme.labelSmall!
                                              .copyWith(fontSize: 14),
                                          decoration: const InputDecoration(
                                            contentPadding:
                                                EdgeInsets.symmetric(
                                                    horizontal: 15,
                                                    vertical: 5),
                                            suffixIcon: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: FaIcon(FontAwesomeIcons
                                                  .calendarDays),
                                            ),
                                          ),
                                          onTap: () async {
                                            DateTime? date = DateTime(1900);

                                            FocusScope.of(context)
                                                .requestFocus(FocusNode());
                                            date = await Picker()
                                                .birthDatePicker(context);
                                            age = DateTime.now().year -
                                                date!.year;

                                            _dateController.text = formatDate(
                                                date, [dd, '.', mm, '.', yyyy]);
                                          },
                                          onSaved: (value) {
                                            _dateController.text =
                                                value!.trim();
                                          },
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            const Spacer(),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
