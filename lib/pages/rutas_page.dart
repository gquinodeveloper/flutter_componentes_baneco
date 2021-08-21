import 'package:baneco_componentes/pages/card_page.dart';
import 'package:baneco_componentes/pages/input_page.dart';
import 'package:flutter/material.dart';

class RutasPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          ListTile(
            title: Text("Card Page"),
            leading: Icon(Icons.card_giftcard),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute<void>(
                  builder: (BuildContext context) => CardPage(),
                ),
              );
            },
          ),
          ListTile(
            title: Text("Input Page"),
            leading: Icon(Icons.input_outlined),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute<void>(
                  builder: (BuildContext context) => InputPage(),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
