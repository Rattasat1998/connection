import 'package:connection/app/translations/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';
import 'app/routes/app_pages.dart';
import 'app/theme/app_theme.dart';

void main() {
  runApp(
    GetMaterialApp(
      title: "Application",
      theme: ThemeConfig.lightTheme,
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      locale: Get.locale,
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: L10n.all,
    ),
  );
}
