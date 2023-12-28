import 'package:flutter/material.dart';
import 'package:t_store_firebase/config/theme/app_theme.dart';

void main() {
  
  //TODO: Add widgets Binding:
  //TODO: Init local STorage
  //TODO: Await Splash
  //TODO: Initialize FIrebase
  //TODO: Initialize authentication

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      themeMode: ThemeMode.system, //Reconoce el theme del móvil
      //config for light theme:
      theme: CAppTheme.lightTheme,
      //config for dark theme:
      darkTheme: CAppTheme.darkTheme,
      
    );
  }
}
