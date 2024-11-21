import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../generated/strings.g.dart';
import '../../common/constant/app_constants.dart';
import '../../common/utils/extension/extensions.dart';
import '../../common/widget/space.dart';

@RoutePage()
class BankCardsScreen extends StatelessWidget {
  const BankCardsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          context.t.dashboard.bankCards,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              CupertinoIcons.plus,
            ),
          ),
        ],
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(AppConstants.padding),
        separatorBuilder: (context, index) => Space.v10,
        itemCount: 3,
        itemBuilder: (context, index) {
          return ListTile(
            tileColor: context.theme.cardColor,
            title: Text(
              '**** **** **** 9142',
              style: context.textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Text(
              'Amanov Aman \t',
              style: context.textTheme.titleSmall,
            ),
            trailing: Container(
              width: 80,
              height: 40,
              decoration: BoxDecoration(
                color: context.colorScheme.primary,
                borderRadius: BorderRadius.circular(AppConstants.borderRadius / 2),
              ),
            ),
          );
        },
      ),
    );
  }
}
