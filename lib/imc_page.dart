import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:imc/model/imc_model.dart';

class Imc extends StatefulWidget {
  Imc({Key key}) : super(key: key);

  @override
  _ImcState createState() => _ImcState();
}

class _ImcState extends State<Imc> {
  final _imc = ImcModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cálculo do IMC"),
      ),
      body: _body(),
    );
  }

  _body() {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(16),
            child: Observer(
              builder: (_) => TextField(
                onChanged: (value) => _imc.altura = double.parse(value),
                obscureText: false,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Altura',
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(16),
            child: Observer(
              builder: (_) => TextField(
                onChanged: (value) => _imc.peso = double.parse(value),
                obscureText: false,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Peso',
                ),
              ),
            ),
          ),
          RaisedButton(
            onPressed: _imc.calcular,
            child: Text('Calcular'),
          ),
          Observer(
            builder: (_) => Text(
              _imc.resultado.toStringAsFixed(2),
              style: TextStyle(fontSize: 25, color: Colors.lightBlue),
            ),
          )
        ],
      ),
    );
  }
}
