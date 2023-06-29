import 'package:flutter/material.dart';

class ColumnSampleWidget extends StatelessWidget {
  const ColumnSampleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Column Sample"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Column(children: [
        _coloredTextBox(Colors.lightBlue, "Column Cell 1"),
        _coloredTextBox(Colors.lightGreen, "Column Cell 2"),
        // 3つ目の行は残りの領域すべて利用する
        Expanded(child: _coloredTextBox(Colors.deepOrange, "Column Cell Expanded")),
      ]),
    );
  }

  Widget _coloredTextBox(Color color, String label) {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: ColoredBox(
        color: color,
        child: Text(label),
      ),
    );
  }
}
