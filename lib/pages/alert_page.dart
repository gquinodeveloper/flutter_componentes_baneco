import 'package:baneco_componentes/pages/widgets/wcard.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AlertPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Alert Page"),
      ),
      /* body: Column(
        children: [
          WCard(),
        ],
      ), */
      body: Center(
        child: GestureDetector(
          onTap: () => _showAlert(context),
          child: Container(
            width: 160.0,
            height: 35.0,
            decoration: BoxDecoration(
              color: Colors.deepPurple,
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Center(
              child: Text(
                "Click me!",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ),
        /* child: TextButton(
          onPressed: () => _showAlert(context),
          /* 
          onPressed: () {
            _showAlert(context);
          }, 
          */
          //child: Text("Click me!"),
          child: ,
        ), */
      ),
    );
  }

  void _showAlert(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          title: Text("Dialog"),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text("Hola Mundo"),
              FlutterLogo(size: 100.0),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text("Cancelar"),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text("Ok"),
            ),
          ],
        );
      },
    );
  }
}
