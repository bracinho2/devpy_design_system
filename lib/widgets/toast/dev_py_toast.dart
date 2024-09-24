import 'package:flutter/material.dart';

class DevPyToast {
  /// setar no Material APP a chave: //scaffoldMessengerKey: SnackBarManager.snackKey,
  static final GlobalKey<ScaffoldMessengerState> snackKey =
      GlobalKey<ScaffoldMessengerState>();

  _show({
    required BuildContext context,
    required Widget content,
    required Function() onClose,
    required Function() onPinLocation,
  }) {
    //final isWeb = PlatformChecker.isWeb(context);

    final snackBar = SnackBar(
      behavior: SnackBarBehavior.floating,
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      //width: isWeb ? 450 : null,
      margin: //isWeb
          //? null
          //:
          const EdgeInsets.only(
        left: 10,
        right: 10,
        bottom: 80,
      ),
      padding: EdgeInsets.zero,
      content: Container(
        padding: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          color: const Color(0xff050922),
          borderRadius: BorderRadius.circular(24),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: hideToast,
              icon: const Icon(
                Icons.close,
                size: 16,
                color: Colors.white,
              ),
            ),
            content,
            Column(
              children: [
                IconButton(
                  onPressed: onPinLocation,
                  icon: const Icon(
                    Icons.room,
                    size: 20,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );

    snackKey.currentState
      ?..hideCurrentSnackBar()
      ..showSnackBar(snackBar);
  }

  hideToast() => snackKey.currentState?.hideCurrentSnackBar();

  showBasicInfo({
    required BuildContext context,
    required Widget content,
    required Function() onClose,
    required Function() onPinLocation,
  }) =>
      _show(
        context: context,
        content: content,
        onClose: onClose,
        onPinLocation: onPinLocation,
      );
}
