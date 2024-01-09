//RELACIONADO CON LOS DISPOSITIVOS:

import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher_string.dart';

class CDeviceUtils {
  //OCULTAR EL TECLADO:
  static void hideKeyboard(BuildContext context) {
    FocusScope.of(context).requestFocus(FocusNode());
  }

//ESTABLECE EL COLOR DE LA BARRA DE ESTADO EN EL DISPOSITIVO:
  static Future<void> setStatusBarColor(Color color) async {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: color));
  }

//VERIFICA QUE EL DISPOSITIVO ESTÉ EN ORIENTACIÓN ORIZONTAL: SI EL MARGEN INFERIOR ES 0 ES QUE ESTÁ EN VERTICAL
  static bool isLandscapeOrientation(BuildContext context) {
    final viewInsets = View.of(context).viewInsets;
    return viewInsets.bottom != 0;
  }

//VERIFICA QUE EL DISPOSITIVO ESTÉ EN ORIENTACIÓN VERTICAL:
  static bool isPortraitOrientation(BuildContext context) {
    final viewInsets = View.of(context).viewInsets;
    return viewInsets.bottom != 0;
  }

//QUE OCUPE TODA LA PANTALLA:
  static void setFullScreen(bool enable) {
    SystemChrome.setEnabledSystemUIMode(
        enable ? SystemUiMode.immersiveSticky : SystemUiMode.edgeToEdge);
  }

//TE DICE LA ALTURA DE LA PANTALLA:
  static double getScreenHeight() {
    return MediaQuery.of(Get.context!).size.height;
  }

//TE DICE LA ANCHURA DE LA PANTALLA:
  static double getScreenWidth(BuildContext context) {
    return MediaQuery.of(Get.context!).size.width;
  }

//TE DICE EL RATIO DE PIXELS DE LA PANTALLA: densidad de pixeles del dispositivo
  static double getPixelRatio() {
    return MediaQuery.of(Get.context!).devicePixelRatio;
  }

  static double getStatusBarHeight() {
    return MediaQuery.of(Get.context!).padding.top;
  }

  static double getBottomNavigationBarHeight() {
    return kBottomNavigationBarHeight;
  }

  static double getAppBarHeight() {
    return kToolbarHeight;
  }

  static double getKeyboardHeight() {
    final viewInsets = MediaQuery.of(Get.context!).viewInsets;
    return viewInsets.bottom;
  }

  static Future<bool> isKeyboardVisible() async {
    final viewInsets = View.of(Get.context!).viewInsets;
    return viewInsets.bottom > 0;
  }

//TE DICE SI LO ESTÁ VIENDO EN UN MÓVIL:
  static Future<bool> isPhysicalDevice() async {
    return defaultTargetPlatform == TargetPlatform.android ||
        defaultTargetPlatform == TargetPlatform.iOS;
  }

//HACE QUE EL DISPOSITIVO VIBRE,
  static void vibrate(Duration duration) {
    HapticFeedback.vibrate();
    Future.delayed(
        duration,
        () => HapticFeedback
            .vibrate()); //PROPORCIONA OTRA VIBRACIÓN DESPUÉS DE LA INICIAL
  }

  static Future<void> setPreferredOrientations(
      List<DeviceOrientation> orientations) async {
    await SystemChrome.setPreferredOrientations(orientations);
  }

  static void hideStatusBar() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
  }

  static void showStatusBar() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: SystemUiOverlay.values);
  }

  static Future<bool> hasInternetConnection() async {
    try {
      final result = await InternetAddress.lookup('example.com');
      return result.isNotEmpty && result[0].rawAddress.isNotEmpty;
    } on SocketException catch (_) {
      return false;
    }
  }

  static bool isIOS() {
    return Platform.isIOS;
  }

  static bool isAndroid() {
    return Platform.isAndroid;
  }
//COMPROBAR SI ES UNA URL BUENA:  
  static void launchUrl(String url) async {
    if (await canLaunchUrlString(url)) {
      await launchUrlString(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
