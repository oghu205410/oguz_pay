import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../common/config/router/app_router.gr.dart';
import '../../common/constant/app_constants.dart';
import '../../common/utils/extension/extensions.dart';
import '../../common/widget/space.dart';

@RoutePage()
class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(AppConstants.padding),
        children: [
          ...[
            SizedBox(height: context.height * 0.2),
            Text(
              'Hello, who are you?',
              style: context.textTheme.displayLarge,
              textAlign: TextAlign.center,
            ),
            Row(
              children: [
                Expanded(
                  child: FilledButton(
                    style: FilledButton.styleFrom(
                      padding: const EdgeInsets.all(AppConstants.padding * 2),
                    ),
                    onPressed: () => context.pushRoute(
                      OnboardingIndividualRoute(),
                    ),
                    child: Text(
                      'Fiziki şahs',
                      style: context.textTheme.titleLarge?.copyWith(
                        color: context.colorScheme.onPrimary,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: FilledButton(
                    style: FilledButton.styleFrom(
                      padding: const EdgeInsets.all(AppConstants.padding * 2),
                    ),
                    onPressed: () => context.pushRoute(
                      OnboardingBusinessRoute(),
                    ),
                    child: Text(
                      'Telekeçi (ýuridiki şahs)',
                      style: context.textTheme.titleLarge?.copyWith(
                        color: context.colorScheme.onPrimary,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ].expand(
            (e) => [
              e,
              Space.v20,
            ],
          ),
        ],
      ),
    );
  }
}
