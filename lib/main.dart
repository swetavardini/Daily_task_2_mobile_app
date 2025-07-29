import 'package:flutter/material.dart';
import 'package:theme_app/services/theme_sevices.dart';
import 'package:theme_app/theme/app_theme.dart';
import 'package:theme_app/ui/home_page.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: AppTheme.light,
      darkTheme: AppTheme.dark,
      themeMode: ThemeService().theme,
    
      debugShowCheckedModeBanner: false,
      home: HomePage()
     
    );
  }
}

