import 'package:flutter/Material.dart';



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