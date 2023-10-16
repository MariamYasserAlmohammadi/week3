import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:week3/IslamiApp_AhmedNabil/utils/app_theme.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:week3/providers/settings_provider.dart';

class SettingsTab1 extends StatefulWidget {
  @override
  State<SettingsTab1> createState() => _SettingsTab1State();
}

class _SettingsTab1State extends State<SettingsTab1> {
  late bool arSwitch ;
  late bool darkModeSwitch;
  late SettingsProvider provider;

  @override
  Widget build(BuildContext context) {
    provider = Provider.of(context);
    darkModeSwitch = provider.isDarkMode();
    arSwitch =provider.IsAr();
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            AppLocalizations.of(context)!.settings,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          buildSettingsRow("العربية", arSwitch, (newValue) {
            arSwitch = newValue;
            if (arSwitch) {
              provider.setCurrentLocale("ar");
            } else {
              provider.setCurrentLocale("en");
            }
          }),
          buildSettingsRow(AppLocalizations.of(context)!.islami, darkModeSwitch,
              (newValue) {
            darkModeSwitch = newValue;
            if (darkModeSwitch) {
              provider.setCurrentMode(ThemeMode.dark);
            } else {
              provider.setCurrentMode(ThemeMode.light);
            }
            ;
          }),
        ],
      ),
    );
  }

  Widget buildSettingsRow(
      String title, bool switchValue, Function(bool) onChanged) {
    return Row(
      children: [
        SizedBox(
          width: 16,
        ),
        Text(
          title,
          style: Theme.of(context).textTheme.bodySmall,
        ),
        Spacer(),
        Switch(
            value: switchValue,
            onChanged: onChanged,
            activeColor: Colors.green),
      ],
    );
  }
}
