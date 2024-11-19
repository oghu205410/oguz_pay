import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

import '../../../generated/assets/assets.gen.dart';
import '../../common/utils/extension/extensions.dart';

@RoutePage()
class OnboardingBusinessScreen extends StatelessWidget {
  OnboardingBusinessScreen({super.key});

  final introKey = GlobalKey<IntroductionScreenState>();

  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      key: introKey,
      pages: [
        PageViewModel(
          title: "Fractional shares",
          body: "Instead of having to buy an entire share, invest any amount you want.",
          image: Assets.tmp.onboardingBusiness1.svg(),
        ),
        PageViewModel(
          title: "Learn as you go",
          body: "Download the Stockpile app and master the market with our mini-lesson.",
          image: Assets.tmp.onboardingBusiness2.svg(),
        ),
        PageViewModel(
          title: "Learn as you go",
          body: "Download the Stockpile app and master the market with our mini-lesson.",
          image: Assets.tmp.onboardingBusiness3.svg(),
        ),
      ],
      onDone: () {},
      back: const Icon(Icons.arrow_back),
      skip: Text(
        'Skip',
        style: context.textTheme.labelLarge,
      ),
      next: const Icon(Icons.arrow_forward),
      done: Text(
        'Done',
        style: context.textTheme.labelLarge,
      ),
      curve: Curves.fastLinearToSlowEaseIn,
    );
  }
}
