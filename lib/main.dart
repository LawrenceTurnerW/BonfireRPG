import 'package:bonfirerpg/menu.dart';
import 'package:flutter/material.dart';
import 'package:bonfire/bonfire.dart';
import 'package:flutter/foundation.dart';
//import 'package:flutter/services.dart';

double tileSize = 32;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (!kIsWeb) {
    await Flame.device.setLandscape();
    await Flame.device.fullScreen();
  }
  //await Sounds.initialize();
  //MyLocalizationsDelegate myLocation = const MyLocalizationsDelegate();
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Normal',
      ),
      title: 'BonfireRPG',
      home: const Menu(),
    ),
  );
}
