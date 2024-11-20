import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../common/constant/app_constants.dart';
import '../../common/utils/extension/extensions.dart';
import '../../common/widget/space.dart';
import '../../domain/enum/enum.dart';

@RoutePage()
class LoginScreen extends StatelessWidget {
  final UserTypeEnum userTypeEnum;

  const LoginScreen({
    super.key,
    required this.userTypeEnum,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) => ListView(
          children: [
            Container(
              padding: const EdgeInsets.all(AppConstants.padding),
              constraints: BoxConstraints(
                minHeight: constraints.maxHeight - kToolbarHeight,
              ),
              alignment: Alignment.center,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ...[
                    Text(
                      'Sign in',
                      style: context.textTheme.titleLarge?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Username',
                      ),
                      keyboardType: TextInputType.emailAddress,
                    ),
                    if (userTypeEnum == UserTypeEnum.enterprise)
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: 'Individual Tax Number (ITN)',
                        ),
                        keyboardType: TextInputType.numberWithOptions(
                          signed: true,
                          decimal: true,
                        ),
                      ),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Password',
                      ),
                      keyboardType: TextInputType.visiblePassword,
                    ),
                    FilledButton(
                      onPressed: () {},
                      child: Text('Sign in'),
                    ),
                  ].expand(
                    (e) => [
                      e,
                      Space.v10,
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
