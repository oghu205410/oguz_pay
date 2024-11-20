import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../generated/strings.g.dart';
import '../../common/config/router/app_router.gr.dart';
import '../../common/widget/space.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          context.t.dashboard.home,
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FilledButton(
            onPressed: () => context.pushRoute(
              PaymentIncomingRoute(),
            ),
            child: Text(
              'Получить',
            ),
          ),
          Space.h20,
          FloatingActionButton(
            onPressed: () => context.pushRoute(
              PaymentQrScannerRoute(),
            ),
            child: Icon(
              Icons.qr_code,
            ),
          ),
        ],
      ),
    );
  }
}
