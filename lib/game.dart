import 'package:bonfire/bonfire.dart';
import 'package:bonfirerpg/main.dart';
import 'package:flutter/material.dart';

import 'player/knight.dart';

class Game extends StatefulWidget {
  static bool useJoystick = true;
  const Game({Key? key}) : super(key: key);

  @override
  _GameState createState() => _GameState();
}

class _GameState extends State<Game> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var joystick = Joystick(
      directional: JoystickDirectional(
        spriteBackgroundDirectional: Sprite.load('joystick_background.png'),
        spriteKnobDirectional: Sprite.load('joystick_knob.png'),
        size: 150,
        isFixed: false,
      ),
      actions: [],
    );

    return Material(
      color: Colors.transparent,
      child: BonfireWidget(
        joystick: joystick,
        player: Knight(
          Vector2(2 * tileSize, 3 * tileSize),
        ),
        map: WorldMapByTiled(
          'tiled/map.json',
          forceTileSize: Vector2(tileSize, tileSize),
        ),
        lightingColorGame: Colors.black.withOpacity(0.6),
        backgroundColor: Colors.grey[900]!,
        cameraConfig: CameraConfig(
          speed: 3,
          zoom: getZoomFromMaxVisibleTile(context, tileSize, 18),
        ),
        progress: Container(
          color: Colors.black,
          child: const Center(
            child: Text(
              "Loading...",
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'Normal',
                fontSize: 20.0,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
