import 'dart:async';

import 'package:flutter/material.dart';

class ListViewInfinityPage extends StatefulWidget {
  @override
  _ListViewInfinityPageState createState() => _ListViewInfinityPageState();
}

class _ListViewInfinityPageState extends State<ListViewInfinityPage> {
  List<int> _listaNumeros = [];
  int _ultimoItem = 0;
  bool _isLoading = false;
  ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    _agregarItems();

    _scrollController.addListener(
      () {
        print("valor: " + _scrollController.position.pixels.toString());
        if (_scrollController.position.pixels ==
            _scrollController.position.maxScrollExtent) {
          fetchData();
          //print("Hola Llegue al final");
        }
      },
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Listview Infinity"),
      ),
      body: Stack(
        children: [
          _crearLista(),
          _crearLoading(),
        ],
      ),
    );
  }

  Widget _crearLista() {
    return RefreshIndicator(
      onRefresh: _obtenerNuevasNoticias,
      child: ListView.builder(
        controller: _scrollController,
        itemCount: _listaNumeros.length,
        itemBuilder: (context, index) {
          final urlImage =
              "https://picsum.photos/500/300/?image=${_listaNumeros[index]}";
          return FadeInImage(
            image: NetworkImage(urlImage),
            height: 300.0,
            width: double.infinity,
            fit: BoxFit.cover,
            placeholder: AssetImage("assets/loading.gif"),
            fadeInDuration: Duration(milliseconds: 1000),
          );
        },
      ),
    );
  }

  Widget _crearLoading() {
    if (_isLoading) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Center(
            child: CircularProgressIndicator(),
          ),
          SizedBox(height: 50.0),
        ],
      );
    } else {
      return SizedBox();
    }
  }

  Future<void> _obtenerNuevasNoticias() {
    final _duration = Duration(milliseconds: 1);
    new Timer(_duration, () {
      _listaNumeros.clear();
      _ultimoItem++;
      _agregarItems();
    });

    setState(() {});
    return Future.delayed(_duration);
  }

  void _agregarItems() {
    for (var i = 0; i < 10; i++) {
      _ultimoItem++;
      _listaNumeros.add(_ultimoItem);
    }
  }

  fetchData() async {
    _isLoading = true;
    setState(() {});
    return new Timer(Duration(seconds: 2), responseHTTP);
  }

  void responseHTTP() {
    _isLoading = false;
    setState(() {});
    _scrollController.animateTo(
      _scrollController.position.pixels + 100,
      duration: Duration(milliseconds: 300),
      curve: Curves.fastOutSlowIn,
    );
    _agregarItems();
  }
}
