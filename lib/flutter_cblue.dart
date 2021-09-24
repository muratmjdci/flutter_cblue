import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FlutterCblue {
  static const MethodChannel _channel = const MethodChannel('flutter_cblue');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }

  static Future<String> printToBT(
      {@required String printStr, deviceName}) async {
    final Map<String, dynamic> params = <String, dynamic>{
      'printStr': printStr,
      'deviceName': deviceName
    };
    final String result = await _channel.invokeMethod('printToBt', params);
    return result;
  }

  static Future<bool> checkDevice({@required deviceName}) async {
    final Map<String, dynamic> params = <String, dynamic>{
      'deviceName': deviceName
    };
    final bool result = await _channel.invokeMethod('checkDevice', params);
    return result;
  }
}
