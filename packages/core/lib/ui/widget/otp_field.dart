import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:pinput/pinput.dart';
import 'package:smart_auth/smart_auth.dart';

class OtpField extends StatelessWidget{
  final int length;
  final bool readOnly,obscure,enabled;
  final SmsRetriever? smsRetriever = AppSmsRetriever();
  final TextEditingController? controller;
  final List<TextInputFormatter>? inputFormatter;
  OtpField({
    this.length = 6,
    this.readOnly = false,
    this.obscure = true,
    this.enabled = true,
    this.controller,
    this.inputFormatter
});
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Pinput(
        length: length,
        controller: controller,
        readOnly: readOnly,
        obscureText: obscure,
        enabled: enabled,
        smsRetriever: smsRetriever,
        inputFormatters: inputFormatter ?? [],
      ),
    );
  }
}
class AppSmsRetriever implements SmsRetriever{
  AppSmsRetriever();
  final SmartAuth smartAuth = SmartAuth.instance;

  @override
  Future<void> dispose() {
    return smartAuth.removeSmsRetrieverApiListener();
  }

  @override
  Future<String?> getSmsCode() async{
    final signature = await smartAuth.getAppSignature();
    debugPrint('App Signature: $signature');
    final res = await smartAuth.getSmsWithRetrieverApi();
    if (res.hasData) {
      final code = res.requireData.code;
      return code;
    } else {
      return null;
    }
  }

  @override
  bool get listenForMultipleSms => false;

}