import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  TextEditingController _date = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Input"),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(
          horizontal: 20.0,
          vertical: 15.0,
        ),
        child: Column(
          children: [
            _crearInput(),
            SizedBox(height: 10.0),
            _crearInputEmail(),
            SizedBox(height: 10.0),
            _crearInputNumber(),
            SizedBox(height: 10.0),
            _crearInputPassword(),
            SizedBox(height: 10.0),
            _crearFecha(),
          ],
        ),
      ),
    );
  }

  Widget _crearInput() {
    return TextField(
      keyboardType: TextInputType.name,
      decoration: InputDecoration(
        /* border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0),
        ), */
        labelText: "Nombre",
        //hintText: "Ingrese nombre",
        //suffixIcon: Icon(Icons.person_outline),
        icon: Icon(Icons.person_outline),
      ),
      onChanged: (value) {
        print(value);
      },
    );
  }

  Widget _crearInputEmail() {
    return TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        /* border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0),
        ), */
        labelText: "Correo",
        //hintText: "Ingrese nombre",
        //suffixIcon: Icon(Icons.person_outline),
        icon: Icon(Icons.email_outlined),
      ),
    );
  }

  Widget _crearInputNumber() {
    return TextField(
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        /* border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0),
        ), */
        labelText: "Número",
        //hintText: "Ingrese nombre",
        //suffixIcon: Icon(Icons.person_outline),
        icon: Icon(Icons.keyboard_outlined),
      ),
    );
  }

  Widget _crearInputPassword() {
    return TextField(
      keyboardType: TextInputType.text,
      obscureText: true,
      decoration: InputDecoration(
        /* border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0),
        ), */
        labelText: "Constraseña",
        //hintText: "Ingrese nombre",
        suffixIcon: Icon(Icons.remove_red_eye_sharp),
        icon: Icon(Icons.lock_outline),
      ),
    );
  }

  Widget _crearFecha() {
    return TextField(
      controller: _date,
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        labelText: "Fecha",
        icon: Icon(Icons.date_range_outlined),
      ),
      onTap: () {
        _selectDate(context);
      },
    );
  }

  _selectDate(BuildContext context) async {
    DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2018),
      lastDate: DateTime(2100),
    );

    if (picked != null) {
      _date.text = picked.toString();
      setState(() {});
    }
  }
}
