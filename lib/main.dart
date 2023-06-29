import 'package:flutter/material.dart';
import 'package:flutter_widget_expand_sample/column_sample.dart';
import 'package:flutter_widget_expand_sample/row_sample.dart';
import 'package:flutter_widget_expand_sample/row_sample2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.amber),
        useMaterial3: true,
      ),
      darkTheme: ThemeData.dark(useMaterial3: true),
      home: const MyHomePage('Flutter Widget Expand Sample'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;

  const MyHomePage(this.title, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(title),
      ),
      body: SizedBox.expand(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _menuButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => ColumnSampleWidget()));
              },
              label: "Column",
            ),
            const SizedBox(height: 25),
            _menuButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => RowSampleWidget()));
              },
              label: "Row",
            ),
            const SizedBox(height: 25),
            _menuButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => RowSample2Widget()));
              },
              label: "Row 2",
            )
          ],
        ),
      ),
    );
  }

  Widget _menuButton({required Function()? onPressed, required String label}) {
    return SizedBox(
      width: 250,
      height: 50,
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(label, style: const TextStyle(fontSize: 20)),
      ),
    );
  }
}
