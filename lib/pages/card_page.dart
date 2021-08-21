import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: Text("Card"),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(
          horizontal: 20.0,
          vertical: 10.0,
        ),
        child: ListView(
          children: [
            _cardTipo1(),
            SizedBox(height: 15.0),
            _cardTipo2(),
            SizedBox(height: 15.0),
            _cardTipo1(),
            SizedBox(height: 15.0),
            _cardTipo2(),
            SizedBox(height: 15.0),
            _cardTipo1(),
            SizedBox(height: 15.0),
            _cardTipo2(),
          ],
        ),
      ),
    );
  }

  Widget _cardTipo1() {
    return Card(
      //color: Colors.deepPurple,
      elevation: 4.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Column(
        children: [
          ListTile(
            title: Text("Title"),
            subtitle: Text("Card tipo 1"),
          ),
        ],
      ),
    );
  }

  Widget _cardTipo2() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.amber,
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15.0),
        child: Column(
          children: [
            FadeInImage(
              image: NetworkImage(
                "https://i.pinimg.com/474x/73/aa/41/73aa4137888fd6819c146bc7a9637fdd.jpg",
              ),
              height: 300.0,
              width: double.infinity,
              fit: BoxFit.cover,
              placeholder: AssetImage("assets/loading.gif"),
              fadeInDuration: Duration(milliseconds: 1000),
            ),

            /*   Image.network(
              "https://i.pinimg.com/474x/73/aa/41/73aa4137888fd6819c146bc7a9637fdd.jpg",
            ), */
            //NetworkImage("url"),
            ListTile(
              title: Text("Title"),
              subtitle: Text("Card tipo 1"),
            ),
          ],
        ),
      ),
    );
  }
}
