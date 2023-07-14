import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class App_Constant{




}
Dialog? dialog;
bool isShowing = false;

void dialog_Progress(BuildContext context) {
  showGeneralDialog(
      context: context,
      barrierDismissible: false,
      barrierLabel: MaterialLocalizations.of(context).modalBarrierDismissLabel,
      barrierColor: Colors.black12,
      transitionDuration: const Duration(milliseconds: 200),
      pageBuilder: (BuildContext buildContext, Animation animation,
          Animation secondaryAnimation) {
        return WillPopScope(
          onWillPop: () async => false,
          child: SizedBox(
            height: 50,
            width: 60,
            child: Center(
              child: CircularProgressIndicator(),
            ),
          ),
        );
      });
}

void ToastCall(BuildContext context,String msg) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    content: Text(msg),
  ));
}