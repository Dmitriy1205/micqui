import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:micqui/core/constants/colors.dart';
import 'package:micqui/features/profile/presentation/edit_profile/bloc/edit_profile_bloc.dart';
import 'package:micqui/features/profile/presentation/edit_profile/widgets/date_picker.dart';
import 'package:micqui/features/profile/presentation/edit_profile/widgets/image_picker/profile_Image_picker.dart';

import '../../../../core/constants/strings.dart';
import '../../../../core/themes/theme.dart';
import 'package:date_format/date_format.dart';

import '../../../../core/widgets/app_elevated_button.dart';
import '../../../../core/widgets/loading_indicator.dart';
import '../../../../data/models/user/user_model.dart';
import '../../../../data/repositories/firestore_repository.dart';
import '../../../../data/repositories/storage_repository.dart';
import '../bloc/profile_bloc.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({
    Key? key,
  }) : super(key: key);

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  late final EditProfileBloc _bloc = EditProfileBloc(
      firestore: FirestoreRepository(firestore: FirebaseFirestore.instance),
      storage: StorageRepository(storage: FirebaseStorage.instance),
      profileBloc: context.read<ProfileBloc>());

  final _formKey = GlobalKey<FormState>();
  final _nickNameController = TextEditingController();
  final _nameController = TextEditingController();

  final _companyNameController = TextEditingController();

  late int age;

  late String? selectedCountry;
  late String? selectedRole;
  late FocusNode _focusNode;
  late UserModel user;

  @override
  void initState() {
    user = BlocProvider.of<ProfileBloc>(context).state.user!;
    _nameController.text = user.fullName!.trim() ?? '';
    _companyNameController.text = user.companyName!;
    _nickNameController.text = user.nickName!;
    selectedCountry = user.country!;
    selectedRole = user.role!;
    _focusNode = FocusNode();
    super.initState();
  }

  @override
  void dispose() {
    _nameController.dispose();
    _companyNameController.dispose();
    _nickNameController.dispose();
    _focusNode.dispose();
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
              success: (_) => Navigator.pop(context),
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
            orElse: () => ClipRRect(
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
                  SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 25, vertical: 36),
                      child: Column(
                        children: [
                          SizedBox(height: 64,),
                          SizedBox(
                            height: 138,
                            width: 138,
                            child: ProfileImagePicker(
                              userImage: (file) {
                                _bloc.add(
                                    EditProfileEvent.getImage(image: file));
                              },
                              avatar: const SizedBox(),
                              user: user,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 15, horizontal: 80),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Flexible(
                                  // width: 90,
                                  child: EditableText(
                                    textAlign: TextAlign.center,
                                    controller: _nickNameController,
                                    style: AppTheme
                                        .themeData.textTheme.headlineMedium!,
                                    cursorColor: AppColors.background,
                                    backgroundCursorColor: Colors.grey,
                                    selectionControls:
                                        MaterialTextSelectionControls(),
                                    keyboardType: TextInputType.text,
                                    maxLines: 1,
                                    focusNode: _focusNode,
                                  ),
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
                          Text(
                            user.email ?? AppText.emptyEmail,
                            style: const TextStyle(
                                color: AppColors.background,
                                fontWeight: FontWeight.w400,
                                fontSize: 14),
                          ),
                          SizedBox(
                            height: 48,
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
                                        AppText.companyName,
                                        style: TextStyle(
                                            color: AppColors.text,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 12),
                                      ),
                                    ),
                                    TextFormField(
                                      autovalidateMode:
                                      AutovalidateMode.onUserInteraction,
                                      controller: _companyNameController,
                                      style: AppTheme
                                          .themeData.textTheme.labelSmall!
                                          .copyWith(fontSize: 14),
                                      decoration: const InputDecoration(
                                        isDense: true,
                                        prefix: SizedBox(
                                          width: 6,
                                        ),
                                        contentPadding: EdgeInsets.symmetric(
                                          vertical: 7,
                                          horizontal: 5,
                                        ),
                                      ),
                                      validator: (value) {
                                        if (value!.isEmpty) {
                                          return AppText.fieldIsRequired;
                                        }
                                        return null;
                                      },
                                    ),
                                    const SizedBox(
                                      height: 16,
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.only(bottom: 5.0),
                                      child: Text(
                                        AppText.role,
                                        style: TextStyle(
                                            color: AppColors.text,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 12),
                                      ),
                                    ),
                                    DropdownButtonFormField<String>(
                                      autovalidateMode:
                                      AutovalidateMode.onUserInteraction,
                                      style: AppTheme
                                          .themeData.textTheme.labelSmall!
                                          .copyWith(fontSize: 14),
                                      value: selectedRole,
                                      iconSize: 15,
                                      decoration: const InputDecoration(
                                          isDense: true,
                                          prefix: SizedBox(
                                            width: 6,
                                          ),
                                          contentPadding:
                                          EdgeInsets.symmetric(
                                              horizontal: 5, vertical: 7),
                                          border: OutlineInputBorder()),
                                      icon: const Padding(
                                        padding: EdgeInsets.only(right: 8.0),
                                        child: FaIcon(
                                            FontAwesomeIcons.chevronDown),
                                      ),
                                      items: AppText.roles
                                          .map(
                                            (role) =>
                                            DropdownMenuItem<String>(
                                              value: role,
                                              child: Text(
                                                role,
                                                style: AppTheme.themeData
                                                    .textTheme.labelSmall!
                                                    .copyWith(fontSize: 14),
                                              ),
                                            ),
                                      )
                                          .toList(),
                                      onChanged: (role) {
                                        selectedRole = role;
                                      },
                                      validator: (value) {
                                        if (value == null) {
                                          return AppText.fieldIsRequired;
                                        }
                                      },
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
                                    TextFormField(
                                      autovalidateMode:
                                          AutovalidateMode.onUserInteraction,
                                      controller: _nameController,
                                      style: AppTheme
                                          .themeData.textTheme.labelSmall!
                                          .copyWith(fontSize: 14),
                                      decoration: const InputDecoration(
                                        isDense: true,
                                        prefix: SizedBox(
                                          width: 6,
                                        ),
                                        contentPadding: EdgeInsets.symmetric(
                                          vertical: 7,
                                          horizontal: 5,
                                        ),
                                      ),
                                      validator: (value) {
                                        if (value!.isEmpty) {
                                          return AppText.fieldIsRequired;
                                        }
                                        return null;
                                      },
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
                                    DropdownButtonFormField<String>(
                                      autovalidateMode:
                                          AutovalidateMode.onUserInteraction,
                                      style: AppTheme
                                          .themeData.textTheme.labelSmall!
                                          .copyWith(fontSize: 14),
                                      value: selectedCountry,
                                      iconSize: 15,
                                      decoration: const InputDecoration(
                                          isDense: true,
                                          prefix: SizedBox(
                                            width: 6,
                                          ),
                                          contentPadding:
                                              EdgeInsets.symmetric(
                                                  horizontal: 5, vertical: 7),
                                          border: OutlineInputBorder()),
                                      icon: const Padding(
                                        padding: EdgeInsets.only(right: 8.0),
                                        child: FaIcon(
                                            FontAwesomeIcons.chevronDown),
                                      ),
                                      items: AppText.countries
                                          .map(
                                            (country) =>
                                                DropdownMenuItem<String>(
                                              value: country,
                                              child: Text(
                                                country,
                                                style: AppTheme.themeData
                                                    .textTheme.labelSmall!
                                                    .copyWith(fontSize: 14),
                                              ),
                                            ),
                                          )
                                          .toList(),
                                      onChanged: (country) {
                                        selectedCountry = country;
                                      },
                                      validator: (value) {
                                        if (value == null) {
                                          return AppText.fieldIsRequired;
                                        }
                                      },
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 48,),
                          AppElevatedButton(
                              text: AppText.saveEdits.toUpperCase(),
                              onPressed: () {
                                if (!_formKey.currentState!.validate()) {
                                  return;
                                }
                                _formKey.currentState!.save();

                                _bloc.add(
                                  EditProfileEvent.updateFields(
                                    file: state.image,
                                    image: user.avatar ?? '',
                                    fullName: _nameController.text,
                                    country: selectedCountry!,
                                    role: selectedRole!,
                                    companyName: _companyNameController.text,
                                    nickName: _nickNameController.text,
                                  ),
                                );
                              }),
                          const SizedBox(height: 32,),
                        ],
                      ),
                    ),
                  ),
                  SafeArea(
                    child: Container(
                      margin: EdgeInsets.only(left: 25),
                      child: InkWell(
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
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
