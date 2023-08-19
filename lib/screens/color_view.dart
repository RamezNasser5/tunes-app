import 'package:flutter/material.dart';
import 'package:tune_player_app/models/block_model.dart';
import 'package:tune_player_app/view_items/items.dart';

class ColorToneView extends StatelessWidget {
  const ColorToneView({super.key});
  final List<BlockModel> blocks = const [
    BlockModel(color: 0xFFF44336, sound: 'note1.wav'),
    BlockModel(color: 0xFFFF9800, sound: 'note2.wav'),
    BlockModel(color: 0xFFE5FF00, sound: 'note3.wav'),
    BlockModel(color: 0xFF00FF22, sound: 'note4.wav'),
    BlockModel(color: 0xFF7700FF, sound: 'note5.wav'),
    BlockModel(color: 0xFF00FFFF, sound: 'note6.wav'),
    BlockModel(color: 0xFFEA00FF, sound: 'note7.wav'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFEF6DB),
      appBar: AppBar(
        title: const Text("Play Tone"),
        backgroundColor: const Color(0xFF46322B),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: blocks.map((e) => Blocks(blockModel: e)).toList(),
      ),
    );
  }
}
