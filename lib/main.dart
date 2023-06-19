import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shahiq/routes/app_routes.dart';

import 'core/help/app_localization/app_local.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context, child) => MaterialApp(
        theme: ThemeData(
          visualDensity: VisualDensity.standard,
        ),
        title: 'shahiq',
        debugShowCheckedModeBanner: false,
        initialRoute: AppRoutes.shahiqPlus,
        routes: AppRoutes.routes,
        locale: Locale("ar"),
        localizationsDelegates: [
          AppLocale.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: [
          Locale("ar",""),
          Locale("en",""),
        ],
        localeResolutionCallback: (currentLocal,supportedLocal){
        },
      ),
    );
  }
}
