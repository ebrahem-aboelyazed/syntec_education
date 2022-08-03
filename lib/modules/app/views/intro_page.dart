import 'package:education/helpers/hive_helper.dart';
import 'package:education/modules/app/views/widgets/intro_description.dart';
import 'package:education/modules/app/views/widgets/intro_title.dart';
import 'package:flutter/material.dart';
import 'package:intro_slider/intro_slider.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

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
      //TODO: save intro here
      onDonePress: () async {
        await HiveHelper.instance.saveIntroStatusAndNavigate();
      },
      onSkipPress: () async {
        await HiveHelper.instance.saveIntroStatusAndNavigate();
      },
    );
  }
}
