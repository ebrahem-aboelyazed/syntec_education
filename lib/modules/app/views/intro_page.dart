import 'package:auto_route/auto_route.dart';
import 'package:education/helpers/hive_helper.dart';
import 'package:education/modules/app/views/widgets/intro_description.dart';
import 'package:education/modules/app/views/widgets/intro_title.dart';
import 'package:education/routes/app_router.gr.dart';
import 'package:education/utils/app_constants.dart';
import 'package:flutter/material.dart';
import 'package:intro_slider/intro_slider.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({super.key});

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  @override
  Widget build(BuildContext context) {
    return IntroSlider(
      slides: [
        Slide(
          widgetTitle: const IntroTitle(title: 'LEARN'),
          widgetDescription: const IntroDescription(
            description:
                'Allow miles wound place the leave had. To sitting subject '
                'no improve studied limited',
          ),
          pathImage: 'assets/images/logo_transparent.png',
          widthImage: 300,
          heightImage: 300,
          backgroundColor: const Color(0xff203152),
        ),
        Slide(
          widgetTitle: const IntroTitle(title: 'GROW'),
          widgetDescription: const IntroDescription(
            description:
                'Ye indulgence unreserved connection alteration appearance',
          ),
          pathImage: 'assets/images/logo_transparent.png',
          widthImage: 300,
          heightImage: 300,
          backgroundColor: const Color(0xff305033),
        ),
        Slide(
          widgetTitle: const IntroTitle(title: 'PRACTICE'),
          widgetDescription: const IntroDescription(
            description:
                'believing attempted. Yet timed being songs marry one defer '
                'men our. Although finished blessing do of',
          ),
          pathImage: 'assets/images/logo_transparent.png',
          widthImage: 300,
          heightImage: 300,
          backgroundColor: const Color(0xff203120),
        ),
      ],
      onDonePress: () async {
        await saveIntroStatusAndNavigate(context);
      },
      onSkipPress: () async {
        await saveIntroStatusAndNavigate(context);
      },
    );
  }

  Future<void> saveIntroStatusAndNavigate(BuildContext context) async {
    final _hiveHelper = HiveHelper.instance;
    final settingsBox = _hiveHelper.settingsBox;
    await settingsBox.put(AppConstants.hasShownIntro, true);
    final hasLoggedIn = _hiveHelper.hasLoggedIn;
    if (!mounted) return;
    if (hasLoggedIn) {
      await context.replaceRoute(const HomeRoute());
    } else {
      await context.replaceRoute(const LoginRoute());
    }
  }
}
