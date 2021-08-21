import 'package:flutter/material.dart';

class ListViewPage extends StatelessWidget {
  List<int> numeros = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ListView"),
      ),
      body: ListView.builder(
        itemCount: numeros.length,
        itemBuilder: (context, index) {
          final url = "https://picsum.photos/500/300/?image=${numeros[index]}";
          return GestureDetector(
            onTap: () {
              print("Click en ${numeros[index]}");
            },
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
              width: double.infinity,
              height: 250.0,
              decoration: BoxDecoration(
                image: DecorationImage(image: NetworkImage(url)),
              ),
            ),
          );
        },
      ),
    );
  }
}
