import 'package:flutter/services.dart';
import 'package:local_auth_android/local_auth_android.dart';
import 'package:local_auth/local_auth.dart';

const errorString =AndroidAuthMessages(
  signInTitle: "Authenticate for Login",
  cancelButton: 'Cancel',
  goToSettingsButton: 'Settings',
  goToSettingsDescription: 'Please register your Fingerprint',
);

class LocalAuthApi {
  final _auth = LocalAuthentication();

  Future<bool> hasBiometrics() async {
    try {
      return _auth.canCheckBiometrics;
    } on PlatformException catch (_) {
      return false;
    }
  }

  Future<bool> authenticate() async {
    final isAvaliable = await hasBiometrics();
    if (!isAvaliable) return false;
    try {
      return _auth.authenticate(
          localizedReason: 'Scan',
          authMessages: [
            errorString
          ],
          options: const AuthenticationOptions(
            useErrorDialogs: true,
            stickyAuth: true,
            biometricOnly: true,
          )
      );
    } on PlatformException catch (_) {
      return false;
    }
  }
}
