import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:unilever_app/src/Utils/theme/theme.dart';
import 'package:unilever_app/src/features/screens/splash/splash_screen.dart';

import 'firebase_options.dart';
import 'src/binding/initial_binding.dart';
import 'src/routing/routing.dart';

void main() async{
WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();

  InitialBindings().dependencies();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform );
  
  runApp( const App());
}
class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return 
     GetMaterialApp(
      title: 'Flutter Demo',
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      getPages: AppRouting.appRoutes(),
  );
  }
}