import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../generated/strings.g.dart';

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
      ),
    );
  }
}