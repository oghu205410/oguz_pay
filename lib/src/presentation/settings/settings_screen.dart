import 'package:auto_route/auto_route.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../../../generated/strings.g.dart';
import '../../common/constant/app_constants.dart';
import '../../common/utils/extension/extensions.dart';
import '../../common/widget/space.dart';
import '../../service_locator/sl.dart';
import 'store/settings_store.dart';

part 'widget/__app_settings_group.dart';
part 'widget/__settings_group.dart';
part 'widget/__settings_item.dart';

@RoutePage()
class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(AppConstants.padding),
          children: [
            ...[
              _AppSettingsGroup(),
            ].expand(
              (element) => [
                element,
                Space.v20,
              ],
            )
          ],
        ),
      ),
    );
  }
}
