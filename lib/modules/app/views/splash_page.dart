import 'package:animate_do/animate_do.dart';
import 'package:auto_route/auto_route.dart';
import 'package:education/modules/app/cubits/app_cubit.dart';
import 'package:education/routes/app_router.gr.dart';
import 'package:education/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<AppCubit>();
    return BlocConsumer<AppCubit, AppState>(
      buildWhen: (previous, current) => current is AppFailure,
      listener: (context, state) {
        if (state is AppFirstLaunch) {
          context.router.replaceAll([const IntroRoute()]);
        } else if (state is AppAuthenticated) {
          context.router.replaceAll([const HomeRoute()]);
        } else if (state is AppNotAuthenticated) {
          context.router.replaceAll([const LoginRoute()]);
        } else if (state is AppFailure) {
          showErrorSnackBar(context, state.failure);
        }
      },
      builder: (context, state) {
        if (state is AppFailure) {
          return Scaffold(
            body: Center(
              child: Text('Error: ${state.failure.message}'),
            ),
          );
        } else {
          return Scaffold(
            body: Stack(
              fit: StackFit.expand,
              clipBehavior: Clip.none,
              children: [
                Lottie.asset(
                  'assets/lottie/app_splash.json',
                  animate: true,
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  fit: BoxFit.cover,
                  onLoaded: (_) async {
                    await Future.delayed(const Duration(seconds: 2), () {});
                    await cubit.initialize();
                  },
                ),
                Center(
                  child: FadeIn(
                    child: Text(
                      'Syntec Flow',
                      style: Theme.of(context)
                          .textTheme
                          .headline4
                          ?.copyWith(color: Colors.white),
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                )
              ],
            ),
          );
        }
      },
    );
  }
}
