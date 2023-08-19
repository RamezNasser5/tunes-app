import 'package:flutter/material.dart';
import 'package:tune_player_app/models/block_model.dart';

class Blocks extends StatelessWidget {
  const Blocks({super.key, required this.blockModel});
  final BlockModel blockModel;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          blockModel.playSound();
        },
        child: Container(
          color: Color(blockModel.color),
        ),
      ),
    );
  }
}
