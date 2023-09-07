import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:async';

void main() {
  runApp( const MyApp());
}

//-------BUTTON--------
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         floatingActionButton: FloatingActionButton(
//             onPressed: (){

//             },
//             child: Icon(Icons.thumb_up),
//             backgroundColor: Colors.pink,
//           ),
//       ),
//     );
//   }
// }

//-------SCAFFOLD----------
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   // int _count = 0;
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Sample Code'),
//         ),

//         body: Center(
//           child: Text('You have pressed the button times.')
//         ),

//         bottomNavigationBar: BottomAppBar (
//           child: Container(
//             height: 50.0,
//           ),
//         ),

//         floatingActionButton: FloatingActionButton(
//           onPressed: () => 0,
//           tooltip: 'Increment Counter',
//           child: Icon(Icons.add),
//         ),

//         floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

//       ),
//     );
//   }
// }

//-----------Dialog--------------
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         body:MyLayout(),
//       ),
//     );
//   }
// }


// class MyLayout extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(8.0),
      
//       child: ElevatedButton(
        
//         child: Text('Show ALert'),
//         onPressed: (){
//           showAlertDialog(context);
//         },
//       ),
//       );
//   }
// }

// showAlertDialog(BuildContext context) {
//  // set up the button
//  Widget okButton = TextButton(
//     child: Text("OK"),
//     onPressed: () { },
//   );
//  // set up the AlertDialog
//  AlertDialog alert = AlertDialog(
//     title: Text("My title"),
//     content: Text("This is my message."),
//     actions: [
//       okButton,
//     ],
//   );
//  // show the dialog
//  showDialog(
//   context: context,
//   builder: (BuildContext context) {
//       return alert;
//     },
//  );
// }

//INPUT DAN SELECTION WIDGET
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Contoh Text Field'),
//         ),

//         body: TextField(
//           obscureText: false,
//           decoration: InputDecoration(
//             border: OutlineInputBorder(),
//             labelText: 'Name'
//           ),
//         ),
//       ),
//     );
//   }
// }

//DATE AND TIME PICKER
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Contoh Date Picker',
      home: MyHomePage(
        title: 'Contoh Date Picker',
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //Variable/State untuk mengambil tanggal
  DateTime selectedDate = DateTime.now();

  // Initial SelectDate FLutter
  Future<Null> _selectDate(BuildContext context) async {
 // Initial DateTime FIinal Picked
  final DateTime picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(2015, 8),
      lastDate: DateTime(2101));
  if (picked != null && picked != selectedDate)
      setState(() {
      selectedDate = picked;
    });
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
