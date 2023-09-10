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

//------DATE AND TIME PICKER--------
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Contoh Date Picker',
//       home: MyHomePage(
//         title: 'Contoh Date Picker',
//       ),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({Key? key, required this.title}) : super(key: key);

//   final String title;

//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   //Variable/State untuk mengambil tanggal
//   DateTime selectedDate = DateTime.now();

//   // Initial SelectDate FLutter
//   Future<Null> _selectDate(BuildContext context) async {
//  // Initial DateTime FIinal Picked
//   final DateTime? picked = await showDatePicker(
//       context: context,
//       initialDate: selectedDate,
//       firstDate: DateTime(2015, 8),
//       lastDate: DateTime(2101));
//   if (picked != null && picked != selectedDate)
//       setState(() {
//       selectedDate = picked;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
    
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisSize: MainAxisSize.min,
//           children: <Widget>[
//             Text("${selectedDate.toLocal()}".split(' ')[0]),
//             RaisedButton(onPressed: () => {
//               _selectDate(context),
//               print(selectedDate.day + selectedDate.month + selectedDate.year)
//             },
//             child: Text('Pilih Tanggal'),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

//--------BUILD IN LAYOUT WIDGET------------
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Contoh Button")),
        body: Container(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(primary: Colors.red[900]),
            onPressed: () {}, 
            //color: Colors.red[900],
            child: Text(
              "Button",
              style: TextStyle(fontSize: 20),
            ),
          )
        ),
      ),
    );
  }
}
