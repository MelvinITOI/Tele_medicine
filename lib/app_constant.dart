import 'package:flutter/Material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';



// Snack Bar For Show Error Message
void Snackbar_Error(BuildContext context) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    content: const Text("Error Field"),
    duration: const Duration(milliseconds: 1500),
    width: 370.0,
    backgroundColor: Colors.red,
    behavior: SnackBarBehavior.floating,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20.0),
    ),
  ));
}

void Snackbar_Successfully(BuildContext context) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    content: const Text("Success"),
    duration: const Duration(milliseconds: 1500),
    width: 370.0,
    backgroundColor: Colors.green,
    behavior: SnackBarBehavior.floating,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20.0),
    ),
  ));
}
//-----------------------------------------------------------------------***************----------------------------------------------------------------------------------------//
// LOADER
void configLoading() {
  EasyLoading.instance
    ..displayDuration = const Duration(milliseconds: 2000)
    ..indicatorType = EasyLoadingIndicatorType.ring
    ..loadingStyle = EasyLoadingStyle.dark
    ..indicatorSize = 45.0
    ..radius = 10.0
    ..progressColor = Colors.yellow
    ..backgroundColor = Colors.green
    ..indicatorColor = Colors.yellow
    ..textColor = Colors.yellow
    ..maskColor = Colors.blue.withOpacity(0.5)
    ..userInteractions = true
    ..dismissOnTap = false;
  // ..customAnimation = CustomAnimation();
}
//---------------------------------------------------------------------*****************-----------------------------------------------------------------------------------------/