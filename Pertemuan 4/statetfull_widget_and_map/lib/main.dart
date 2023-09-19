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
     home: Scaffold(
      appBar: AppBar(
        title: Text('Konverter Suhu'),
        ),

        body: TextField(
          obscureText: false,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            label: Text('Masukkan Suhu')
          ),
        ),

        

      ),
    );
  }
}

class DropdownButton extends StatefulWidget {
  const DropdownButton({Key? key, required this.title}) : super(key: key);

  

  final String title;

  @override
  State<DropdownButton> createState() => _DropdownButtonState();
}

class _DropdownButtonState extends State<DropdownButton>{
  
}



