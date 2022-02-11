import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'builder wiget check',
      theme: ThemeData(primarySwatch: Colors.amber),
      home: const MyWiget(),
    );
  }
}

class MyWiget extends StatefulWidget {
  const MyWiget({Key? key}) : super(key: key);

  @override
  _MyWigetState createState() => _MyWigetState();
}

class _MyWigetState extends State<MyWiget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'this is title',
        ),
      ),
      body: Builder(builder: (context) {
        return ElevatedButton(
          onPressed: () {
            Scaffold.of(context).showSnackBar(
              const SnackBar(
                content: Text('the snackbar1'),
                duration: Duration(seconds: 2),
              ),
            );
          },
          child: const Text('the snackbar'),
        );
      }),
    );
  }
}
