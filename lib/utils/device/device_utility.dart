import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:url_launcher/url_launcher_string.dart';

class TDeviceUtility {
  static void hideKeyboard(BuildContext context) {//This method hides the on-screen keyboard.
    FocusScope.of(context).requestFocus(FocusNode());
  }

  static Future setStatusBarColour(Color color) async {//It sets the status bar’s background color to match the status bar color to your app’s theme or the color of a specific screen.


    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: color));
  }

  static bool isLandscapeOrientation(BuildContext context) {//if viewInsets.bottom == 0, it assumes that the screen is in landscape mode
    final viewInsets = View
        .of(context)
        .viewInsets;
    return viewInsets.bottom == 0;
  }

  static bool isPortraitOrientation(BuildContext context) {
    //It checks if the device is in portrait orientation by looking at viewInsets.bottom
    //The logic here assumes:
    //
    // When the keyboard is open, viewInsets.bottom > 0.
    //
    // The keyboard typically opens in portrait mode.
    //
    // So if viewInsets.bottom != 0, it infers that the device is in portrait mode.
    final viewInsets = View
        .of(context)
        .viewInsets;
    return viewInsets.bottom != 0;
  }

  static setFullScreen(bool enable) {
    //Enables or disables full-screen immersive mode.
    //If enable is true → sets immersiveSticky mode: hides status bar & navigation bar; they temporarily appear when swiped.
    //
    // If enable is false → uses edgeToEdge mode: shows system bars but allows content to draw under them.
    //
    // When to use:
    //
    // Full-screen video or game: enable = true
    //
    // Normal app layout: enable = false
    SystemChrome.setEnabledSystemUIMode(
        enable ? SystemUiMode.immersiveSticky : SystemUiMode.edgeToEdge);
  }

  static double getScreenHeight() {
    //Returns the screen height of the device.
    //It uses Get.context! to access the current BuildContext provided by the GetX package.
    return MediaQuery
        .of(Get.context!)
        .size
        .height;
  }

  static double getScreenWidth(BuildContext context) {

    return MediaQuery
        .of(context)
        .size
        .width;
  }

  static double getPixelRatio() {
    return MediaQuery
        .of(Get.context!)
        .devicePixelRatio;
  }

  static double getStatusBarHeight() {
    //Returns the height of the status bar (the top area on the screen where battery, clock, etc., are shown).
    return MediaQuery
        .of(Get.context!)
        .padding
        .top;
  }

  static double getBottomNavigationBarHeight() {
    return kBottomNavigationBarHeight;
  }

  static double getAppBarHeight() {
    return kToolbarHeight;
  }

  static double getKeyboardHeight() {//Returns the height of the on-screen keyboard if visible; otherwise, returns 0.
    final viewInsets = MediaQuery
        .of(Get.context!)
        .viewInsets;
    return viewInsets.bottom;
  }

  static Future<bool> isKeyboardVisible() async {
    //Checks if the keyboard is currently visible.
    //viewInsets.bottom > 0 → means keyboard or other bottom system UI is taking space.
    final viewInsets = View
        .of(Get.context!)
        .viewInsets;
    return viewInsets.bottom > 0;
  }

  static Future<bool> isPhysicalDevice() async {
    //Returns true if the app is running on a physical device (iOS or Android); false if not (e.g., web, desktop).
    return defaultTargetPlatform == TargetPlatform.iOS ||
        defaultTargetPlatform == TargetPlatform.android;
  }

  static vibrate(Duration duration) {

    HapticFeedback.vibrate();
    Future.delayed(duration, () => HapticFeedback.vibrate());
  }

  static Future setPreferredOrientations(List<DeviceOrientation> orientations) {
    //Locks your app to one or more specific screen orientations.
    //When to use:
    //
    // Locking a specific screen to portrait (e.g., login)
    //
    // Allowing landscape mode for video player screens.onboarding
    return SystemChrome.setPreferredOrientations(orientations);
  }

  static hideStatusBar() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
  }

  static showStatusBar() {
    //Shows the system overlays again (status bar and possibly navigation bar).
    //SystemUiOverlay.values includes all available overlays (top and bottom).
    //
    // When to use:
    //
    // After leaving full-screen mode, to bring the status/navigation bar back.
    SystemChrome.setEnabledSystemUIMode(
        SystemUiMode.manual, overlays: SystemUiOverlay.values);
  }

  static Future <bool> hasInternetConnection() async {
    try {
      final result = await InternetAddress.lookup('google.com');
      if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
        return true;
      }
    } on SocketException catch (_) {
      return false;
    }
    return false;
  }

  static bool isIOS(){
    return Platform.isIOS;
  }

  static bool isAndroid(){
    return Platform.isAndroid;
  }

  static launchUrl(String url)async{
    if(await canLaunchUrlString(url)){
      await launchUrlString(url);
    }else{
      throw 'Could not launch $url';
    }
  }
}