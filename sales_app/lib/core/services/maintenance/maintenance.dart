import 'package:flutter/foundation.dart';

class Maintenance {
  static run() async {
    // Add your maintenance code here
    //create folders, delete old files, delete old logs etc.
    if (kDebugMode) {
      print('Maintenance is running');
    }
  }
}
