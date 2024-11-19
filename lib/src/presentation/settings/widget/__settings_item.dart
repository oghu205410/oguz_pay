part of '../settings_screen.dart';

class _SettingsItem extends StatelessWidget {
  final VoidCallback? onTap;
  final Widget leading;
  final String title;
  final String? subtitle;
  final Widget? trailing;

  const _SettingsItem({
    this.onTap,
    required this.leading,
    required this.title,
    this.subtitle,
    this.trailing,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: ListTile(
        onTap: onTap,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            AppConstants.borderRadius / 1.2,
          ),
        ),
        leading: leading,
        dense: true,
        title: Text(
          title,
          style: context.textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
        ),
        subtitle: subtitle != null ? Text(subtitle!) : null,
        trailing: trailing,
      ),
    );
  }
}
