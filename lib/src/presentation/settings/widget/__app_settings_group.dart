part of '../settings_screen.dart';

class _AppSettingsGroup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _SettingsGroup(
      items: [
        _ThemeMode(),
        _Language(),
      ],
    );
  }
}

class _ThemeMode extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _SettingsItem(
      onTap: () {
        if (context.theme.brightness == Brightness.dark) {
          sl<SettingsStore>().updateThemeMode(ThemeMode.light);
        } else {
          sl<SettingsStore>().updateThemeMode(ThemeMode.dark);
        }
      },
      leading: Icon(
        context.theme.brightness == Brightness.dark ? Icons.dark_mode_outlined : Icons.light_mode_outlined,
      ),
      title: context.t.settings.theme,
      trailing: Switch.adaptive(
        value: sl<SettingsStore>().settings.themeMode == ThemeMode.dark,
        activeColor: Theme.of(context).colorScheme.error,
        onChanged: (value) {
          if (value) {
            sl<SettingsStore>().updateThemeMode(ThemeMode.dark);
          } else {
            sl<SettingsStore>().updateThemeMode(ThemeMode.light);
          }
        },
      ),
    );
  }
}

class _Language extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _SettingsItem(
      leading: Icon(
        Icons.language,
      ),
      title: context.t.settings.language,
      trailing: _LanguageSelector(),
    );
  }
}

class _LanguageSelector extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Observer(builder: (context) {
      return ClipRRect(
        borderRadius: BorderRadius.circular(AppConstants.borderRadius / 1.4),
        child: Material(
          type: MaterialType.card,
          color: context.theme.scaffoldBackgroundColor,
          elevation: 0,
          borderRadius: BorderRadius.circular(AppConstants.borderRadius / 1.4),
          child: DropdownButton2<AppLocale>(
            value: sl<SettingsStore>().settings.locale,
            onChanged: sl<SettingsStore>().updateLocale,
            underline: const SizedBox.shrink(),
            items: AppLocale.values
                .map<DropdownMenuItem<AppLocale>>(
                  (locale) => DropdownMenuItem(
                    value: locale,
                    child: Text(
                      locale.getName(context),
                    ),
                  ),
                )
                .toList(),
            dropdownStyleData: DropdownStyleData(
              isOverButton: true,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(AppConstants.borderRadius / 1.6),
              ),
            ),
            iconStyleData: const IconStyleData(
              icon: Padding(
                padding: EdgeInsets.only(right: AppConstants.padding),
                child: Icon(
                  CupertinoIcons.chevron_down,
                ),
              ),
            ),
            menuItemStyleData: const MenuItemStyleData(
              padding: EdgeInsets.symmetric(horizontal: AppConstants.padding * 2),
            ),
          ),
        ),
      );
    });
  }
}
