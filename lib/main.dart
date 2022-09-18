import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:stocker/routes/main_routes.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const String appName = 'Stocker';
    
    return MaterialApp.router(
      debugShowCheckedModeBanner: true,
      title: appName,
      routeInformationParser: BeamerParser(),
      routerDelegate: mainRoutes,  
    );
  }
}