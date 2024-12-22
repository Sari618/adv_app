import 'dart:async';

import 'package:adv_app/peresentaion/resources/assets_manger.dart';
import 'package:adv_app/peresentaion/resources/color_manger.dart';
import 'package:adv_app/peresentaion/resources/constant_manger.dart';
import 'package:adv_app/peresentaion/resources/routes_manger.dart';
import 'package:flutter/material.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  Timer? _timer;
  _startDelay(){
    _timer=Timer(const Duration(seconds: AppConstants.splashDelay),_goNext);
      }
      _goNext(){
        Navigator.pushReplacementNamed(context, Routes.onBordingRoute);
      }
      @override
  void initState() {
        super.initState();
        _startDelay();
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: ColorManger.primary,
      body: const Center(child: Image(image: AssetImage(ImageAssets.splashLogo))),
    );
  }
  @override
  void dispose() {
    _timer?.cancel() ;
    super.dispose();
  }
}
