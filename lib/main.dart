import 'package:flutter/material.dart';
import 'package:flutter_test_1/config/theme/app_theme.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Yes No App',
      debugShowCheckedModeBanner: false,
      theme: AppTheme().theme(0),
      home: Scaffold(
        appBar: AppBar(title: const Text('Material App Bar')),
        body: Center(
          child: FilledButton.tonal(
            onPressed: () {
              return;
            },
            child: const Text('Click Me'),
          ),
        ),

    );
  }
}
