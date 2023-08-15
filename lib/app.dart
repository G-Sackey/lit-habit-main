import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lithabit/pages/auth_page.dart';
import 'package:lithabit/pages/login_page.dart';
import 'package:lithabit/screens/screens_wrapper.dart';
import 'package:lithabit/themes/app_theme.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _startDelayTimer();
  }

  void _startDelayTimer() {
    Timer(const Duration(seconds: 3), () {
      setState(() {
        _isLoading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Lit Habit',
      theme: customTheme,
      home:  const AuthPage()
      // // home: Scaffold(
      //   body: _isLoading ? _buildLoadingScreen() : const ScreensWrapper(),
      // ),
    );
  }

  Widget _buildLoadingScreen() {
    return Center(
      child: Image.asset(
        'assets/loader.gif',
        fit: BoxFit.contain,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
      ),
    );
  }
}
