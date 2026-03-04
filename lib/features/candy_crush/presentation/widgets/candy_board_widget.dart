import 'package:flutter/material.dart';

class CandyBoardWidget extends StatelessWidget {
  final List<List<int>> board;

  const CandyBoardWidget({Key? key, required this.board}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 8,
        childAspectRatio: 1.0,
      ),
      itemBuilder: (context, index) {
        final row = index ~/ 8;
        final col = index % 8;
        final value = board[row][col];
        return Container(
          margin: const EdgeInsets.all(2.0),
          color: Colors.primaries[value % Colors.primaries.length],
        );
      },
      itemCount: 64,
    );
  }
}
