import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('AlertDialog Example'),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              _showAlertDialog(context);
            },
            child: const Text('Показать AlertDialog'),
          ),
        ),
      ),
    );
  }

  Future<void> _showAlertDialog(BuildContext context) async {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('выборы'),
          content: const SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text('выборы.'),
                Text('.'),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Закрыть'),
            ),
            
          ],
        );
      },
    );
  }
}
