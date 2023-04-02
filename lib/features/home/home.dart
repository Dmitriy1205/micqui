import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:micqui/core/constants/colors.dart';
import 'package:micqui/core/constants/strings.dart';
import 'package:micqui/features/home/bloc/home_bloc.dart';
import 'package:micqui/features/profile/profile.dart';

import '../../core/services/service_locator.dart';
import '../../core/themes/theme.dart';
import '../../core/widgets/loading_indicator.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);
  final HomeBloc _bloc = sl<HomeBloc>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: BlocConsumer<HomeBloc, HomeState>(
          bloc: _bloc,
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
                orElse: () {});
          },
          builder: (context, state) {
            return state.maybeMap(
              loading: (_) => const LoadingIndicator(),
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
                                  builder: (context) => Profile(),
                                ),
                              ).then((value) => _bloc.add(HomeEvent.fetchData(
                                  userId: state.user!.id!)));
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
                  const Spacer(),
                  Center(
                    child: Text(
                      'Home'.toUpperCase(),
                      style: AppTheme.themeData.textTheme.headlineMedium!
                          .copyWith(color: AppColors.text),
                    ),
                  ),
                  const Spacer(),
                  const SizedBox(),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
