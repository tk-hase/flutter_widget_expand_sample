import 'package:flutter/material.dart';

class RowSample2Widget extends StatelessWidget {
  const RowSample2Widget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Row Sample"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Row(children: [
        _coloredTextBox(Colors.cyan.shade100, "Row 1"),
        _coloredTextBox(Colors.indigo.shade100, "Row 2"),
        // 3つ目の列は残りの領域すべて利用する
        Expanded(child: _coloredTextBox(Colors.pink, "Row Expanded")),
      ]),
    );
  }

  Widget _coloredTextBox(Color color, String label) {
    return SizedBox(
      // height: double.infinity,
      width: 100,
      child: ColoredBox(
        color: color,
        child: Text(label),
      ),
    );
  }
}
