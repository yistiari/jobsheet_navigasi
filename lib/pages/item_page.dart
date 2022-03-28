import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../models/item.dart';

class ItemPage extends StatelessWidget {
  const ItemPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final itemArgs = ModalRoute.of(context)!.settings.arguments as Item;

    return Scaffold(
        appBar: AppBar(
          title: Text("My List : " + itemArgs.name),
        ),
        body: ListView(children: <Widget>[
          Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  border:
                      Border.all(color: Color.fromARGB(255, 250, 248, 248))),
              child: Column(
                children: [
                  const Image(
                    image: NetworkImage(
                        'https://static.bmdstatic.com/gk/production/6d8d808ee68beffc52c717a5f88d6d5b.jpg'),
                    height: 400,
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: Text(
                        "Item Name : " +
                            itemArgs.name +
                            "\nItem Price : Rp. " +
                            itemArgs.price.toString() +
                            "\nItem Weight : " +
                            itemArgs.weight.toString() +
                            " ons ",
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.bold)),
                  ),
                ],
              ))
        ]));
  }
}
