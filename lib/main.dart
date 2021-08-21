import 'package:baneco_componentes/pages/alert_page.dart';
import 'package:baneco_componentes/pages/app_root.dart';
import 'package:baneco_componentes/pages/card_page.dart';
import 'package:baneco_componentes/pages/home_page.dart';
import 'package:baneco_componentes/pages/input_page.dart';
import 'package:baneco_componentes/pages/listview_infinity_page.dart';
import 'package:baneco_componentes/pages/listview_page.dart';
import 'package:baneco_componentes/pages/rutas_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //home: HomePage(),
      //home: AppRoot(),
      //home: AlertPage(),
      //home: CardPage(),
      //home: ListViewPage(),
      //home: ListViewInfinityPage(),
      //home: InputPage(),
      home: RutasPage(),
    );
  }
}
