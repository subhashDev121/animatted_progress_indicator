import 'package:animated_progress_indicator/animated_progress_indicator.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Animated Progress Indicator',
      darkTheme: ThemeData.dark().copyWith(

      ),
      themeMode: ThemeMode.dark,
      home: const MyHomePage(title: 'Animated Progress Indicator'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double _percentage = 0.0;

  void _incrementPercentage() {
    setState(() {
      _percentage = _percentage+0.1;
    });
  }

  void _decrementPercentage() {
    setState(() {
      _percentage = _percentage-0.1;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.all(10),
            child: AnimatedCircularProgressIndicator(
              percentage: _percentage,
              animationDuration: const Duration(
                seconds: 1,
              ),
            ),
          ),
          const SizedBox(height: 20,),
          Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.all(10),
            child: AnimatedLinearProgressIndicator(
              percentage: _percentage,
              animationDuration: const Duration(
                seconds: 1,
              ),
              label: 'Dart',
            ),
          ),
        ],
      ),
      floatingActionButton: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          FloatingActionButton(
            onPressed: _incrementPercentage,
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ), // This trailing comma
          const SizedBox(height: 20,),
          FloatingActionButton(
            onPressed: _decrementPercentage,
            tooltip: 'Decrement',
            child: const Icon(Icons.remove),
          ), // This trailing comma
        ],
      ),
    );
  }
}
