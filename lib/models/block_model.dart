import 'package:audioplayers/audioplayers.dart';

class BlockModel {
  final int color;
  final String sound;

  const BlockModel({required this.color, required this.sound});

  playSound() {
    final player = AudioPlayer();
    player.play(AssetSource(sound));
  }
}
