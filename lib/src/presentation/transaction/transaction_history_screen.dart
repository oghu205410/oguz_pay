import 'package:animated_toggle_switch/animated_toggle_switch.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../generated/strings.g.dart';
import '../../common/constant/app_constants.dart';
import '../../common/utils/extension/extensions.dart';
import '../../common/widget/space.dart';

enum TransactionHistoryTypeEnum {
  income,
  outcome;

  String getName(BuildContext context) {
    final locale = context.t.transactionHistory;

    switch (this) {
      case TransactionHistoryTypeEnum.income:
        return locale.incoming;
      case TransactionHistoryTypeEnum.outcome:
        return locale.outcoming;
      default:
        return '';
    }
  }
}

@RoutePage()
class TransactionHistoryScreen extends StatelessWidget {
  const TransactionHistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          context.t.dashboard.transactionHistory,
        ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(60),
          child: _Tabbar(),
        ),
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(AppConstants.padding),
        itemBuilder: (context, index) {
          return ListTile(
            tileColor: context.theme.cardColor,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Внеш эконом банк',
                  style: context.textTheme.labelLarge,
                ),
                Text(
                  '200 TMT',
                  style: context.textTheme.labelLarge,
                ),
              ],
            ),
            subtitle: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '21 Ноября 2023 г. 13:30',
                  style: context.textTheme.labelSmall,
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        index == 0 ? 'неудачно' : 'успешно',
                        style: context.textTheme.labelSmall,
                      ),
                      Space.h5,
                      Icon(
                        Icons.circle,
                        size: 12,
                        color: index == 0 ? context.colorScheme.error : context.colorScheme.primary,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
        separatorBuilder: (context, index) => Space.v10,
        itemCount: 3,
      ),
    );
  }
}

class _Tabbar extends StatefulWidget {
  @override
  State<_Tabbar> createState() => _TabbarState();
}

class _TabbarState extends State<_Tabbar> {
  TransactionHistoryTypeEnum current = TransactionHistoryTypeEnum.income;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppConstants.padding),
      child: AnimatedToggleSwitch<TransactionHistoryTypeEnum>.size(
        current: current,
        values: TransactionHistoryTypeEnum.values,
        indicatorSize: const Size.fromHeight(40),
        customIconBuilder: (context, local, global) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                local.value.getName(context),
              ),
            ],
          );
        },
        selectedIconScale: 1.2,
        style: ToggleStyle(
          borderColor: Colors.transparent,
          indicatorColor: context.colorScheme.primary,
        ),
        borderWidth: AppConstants.padding / 2,
        onChanged: (value) => setState(
          () => current = value,
        ),
      ),
    );
  }
}
