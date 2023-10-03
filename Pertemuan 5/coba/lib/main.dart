// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(ItemPage());
}

class ItemPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Item Description"),
        ),
        //   body: Card(
        //     // Define the shape of the card
        //     shape: RoundedRectangleBorder(
        //       borderRadius: BorderRadius.circular(4),
        //     ),
        //     // Define how the card's content should be clipped
        //     clipBehavior: Clip.antiAliasWithSaveLayer,
        //     // Define the child widget of the card
        //     child: Column(
        //       crossAxisAlignment: CrossAxisAlignment.start,
        //       children: <Widget>[
        //         // Add padding around the row widget
        //         Padding(
        //           padding: const EdgeInsets.all(15),
        //           child: Row(
        //             crossAxisAlignment: CrossAxisAlignment.start,
        //             children: <Widget>[
        //               // Add an image widget to display an image
        //               Image.network(
        //                 "https://cdn.britannica.com/35/238335-050-2CB2EB8A/Lionel-Messi-Argentina-Netherlands-World-Cup-Qatar-2022.jpg",
        //                 height: 150,
        //                 width: 150,
        //                 fit: BoxFit.cover,
        //               ),
        //               // Add some spacing between the image and the text
        //               Container(width: 20),
        //               // Add an expanded widget to take up the remaining horizontal space
        //               Expanded(
        //                 child: Column(
        //                   crossAxisAlignment: CrossAxisAlignment.start,
        //                   children: <Widget>[
        //                     // Add some spacing between the top of the card and the title
        //                     Container(height: 5),
        //                     // Add a title widget
        //                     Text(
        //                       "Judul",

        //                       style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        //                     ),
        //                     // Add some spacing between the title and the subtitle
        //                     Container(height: 5),
        //                     // Add a subtitle widget
        //                     Text(
        //                       "Sub title",
        //                       // style: MyTextSample.body1(context)!.copyWith(
        //                       //   color: Colors.grey[500],
        //                       // ),
        //                     ),
        //                     // Add some spacing between the subtitle and the text
        //                     Container(height: 10),
        //                     // Add a text widget to display some text

        //                   ],
        //                 ),
        //               ),
        //             ],
        //           ),
        //         ),
        //       ],
        //     ),
        //   ),

        body: Center(
          child: Card(
            // mengatur bentuk kartu menggunakan batas persegi panjang membulat dengan radius 8 piksel
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            // Set the clip behavior of the card
            clipBehavior: Clip.antiAliasWithSaveLayer,
            // Define the child widgets of the card
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                // Display an image at the top of the card that fills the width of the card and has a height of 160 pixels

                Image.network(
                  "https://cdn.britannica.com/35/238335-050-2CB2EB8A/Lionel-Messi-Argentina-Netherlands-World-Cup-Qatar-2022.jpg",
                  height: 160,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                // Add a container with padding that contains the card's title, text, and buttons
                Container(
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 255, 255, 255),
                    borderRadius: BorderRadius.circular(5),
                    // implement shadow effect
                    boxShadow: const [
                      BoxShadow(
                          color: Color.fromARGB(
                              136, 107, 107, 107), // shadow color
                          blurRadius: 20, // shadow radius
                          offset: Offset(5, 10), // shadow offset
                          spreadRadius:
                              0.1, // The amount the box should be inflated prior to applying the blur
                          blurStyle: BlurStyle.normal // set blur style
                          ),
                    ],
                  ),
                  padding: const EdgeInsets.fromLTRB(15, 15, 15, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      // Display the card's title using a font size of 24 and a dark grey color
                      Text(
                        "Cards Title 2",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                          color: Color.fromARGB(255, 0, 0, 0),
                        ),
                      ),
                      // Add a space between the title and the text
                      Container(height: 10),
                      // Display the card's text using a font size of 15 and a light grey color
                      Text("er3"),
                      // Add a row with two buttons spaced apart and aligned to the right side of the card
                    ],
                  ),
                ),
                // Add a small space between the card and the next widget
                Container(height: 5),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
