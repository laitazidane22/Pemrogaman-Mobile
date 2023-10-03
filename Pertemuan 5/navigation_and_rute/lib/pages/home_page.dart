import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:navigation_and_rute/models/item.dart';

import 'item_page.dart';

class HomePage extends StatelessWidget {

  @override
  final List<Item> items = [
    Item(name: 'Sugar', price: 5000, image: 'assets/sugar.png'),
    Item(name: 'Salt', price: 2000, image: 'assets/salt.png')
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Navigation App"),
        ),
        body: Container(
          margin: EdgeInsets.all(8),
          child: ListView.builder(
            padding: EdgeInsets.all(8),
            itemCount: items.length,
            itemBuilder: ((context, index) {
              final item = items[index];
              return InkWell(
                onTap: () { 
                  Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => ItemPage(item: item)));
                },
                child: Card(
                  child: Container(
                    margin: EdgeInsets.all(8),
                    child: Row(
                      children: <Widget> [
                        Expanded(child: Image.asset(
                          item.image,
                          height: 50,
                          width: 50,
                        )
                        ),

                        Expanded(
                          // child: TextButton.icon(icon: const Icon(Icons.add), label: Text(item.name), onPressed: () { Navigator.pushNamed(context, '/item', arguments: item); },),
                          child: Text(
                            item.name,
                            textAlign: TextAlign.start,
                          ),
                          
                        ),
                        Expanded(
                          child: Text(
                            item.price.toString(),
                            textAlign: TextAlign.end,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              );
            }),
          ),
        ),
      ),
    );
  }

  
}
