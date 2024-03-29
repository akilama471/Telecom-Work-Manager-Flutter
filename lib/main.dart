import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:telecom_worker_manager_flutter/module/authentication/services/authentication_services.dart';
import 'package:telecom_worker_manager_flutter/config/app_themes.dart';
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform).then((value) => Get.put(AuthenticationServices()));

  LicenseRegistry.addLicense(() async* {
    final license = await rootBundle.loadString('google_fonts/OFL.txt');
    yield LicenseEntryWithLineBreaks([
      'google_fonts'
    ], license);
  });

  GoogleFonts.config.allowRuntimeFetching = false;

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Telecom Worker Manager',
      theme: tAppTheme.lightTheme,
      darkTheme: tAppTheme.darkTheme,
      themeMode: ThemeMode.system,
      defaultTransition: Transition.leftToRight,
      transitionDuration: const Duration(milliseconds: 500),
      home: const CircularProgressIndicator(),
    );
  }
}
