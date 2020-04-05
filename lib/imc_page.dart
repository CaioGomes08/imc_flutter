import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:imc/model/imc_model.dart';
import 'package:imc/widgets/text_input.dart';

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
      body: ListView(
        children: <Widget>[_body()],
      ),
    );
  }

  _body() {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(16),
            child: Center(
              child: Image(
                image: AssetImage('assets/images/academia.png'),
                fit: BoxFit.fill,
                height: 100,
                width: 100,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(16),
            child: Observer(
              builder: (_) => TextInput(
                'Altura',
                onChanged: (value) => _imc.setAltura(value),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(16),
            child: Observer(
              builder: (_) => TextInput(
                'Peso',
                onChanged: (value) => _imc.setPeso(value),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          ButtonTheme(
            minWidth: 150,
            height: 50,
            child: RaisedButton(
              onPressed: _imc.calcular,
              child: Text(
                'Calcular',
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Observer(
            builder: (_) => Text(
              'Resultado: ${_imc.resultado.toStringAsFixed(2)}% \n' +
                  'Categoria: ${_imc.categoria}',
              style: TextStyle(
                fontSize: 25,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          )
        ],
      ),
    );
  }
}
