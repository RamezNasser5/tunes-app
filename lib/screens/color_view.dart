import 'package:flutter/material.dart';
import 'package:tune_player_app/models/block_model.dart';
import 'package:tune_player_app/view_items/items.dart';

class ColorToneView extends StatelessWidget {
  const ColorToneView({super.key});
  final List<BlockModel> blocks = const [
    BlockModel(color: 0xFF333333, sound: 'note1.wav'),
    BlockModel(color: 0xFF444444, sound: 'note2.wav'),
    BlockModel(color: 0xFF555555, sound: 'note3.wav'),
    BlockModel(color: 0xFF666666, sound: 'note4.wav'),
    BlockModel(color: 0xFF777777, sound: 'note5.wav'),
    BlockModel(color: 0xFF888888, sound: 'note6.wav'),
    BlockModel(color: 0xFF999999, sound: 'note7.wav'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Play Tone")),
        backgroundColor: Colors.transparent,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: blocks.map((e) => Blocks(blockModel: e)).toList(),
      ),
    );
  }
}
