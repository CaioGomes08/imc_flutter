import 'package:mobx/mobx.dart';

part 'imc_model.g.dart';

class ImcModel = _ImcModelBase with _$ImcModel;

// Calculo IMC é peso / altura * altura

abstract class _ImcModelBase with Store {
  @observable
  String altura = '0';

  @observable
  String peso = '0';

  @observable
  String categoria = '';

  @observable
  double resultado = 0;

  @action
  void setAltura(String value) {
    altura = value;
  }

  @action
  setPeso(String value) {
    peso = value;
  }

  @action
  void calcular() {
    if (altura == '' || peso == '' || altura == '0' || peso == '0') {
      resultado = 0;
    } else {
      resultado =
          double.parse(peso) / (double.parse(altura) * double.parse(altura));
    }
    verificaCategoria();
  }

  @action
  verificaCategoria() {
    if (resultado == 0) {
      categoria = '';
    } else {
      if (resultado <= 18.5) {
        categoria = 'Abaixo do peso';
      } else if (resultado > 18.5 && resultado <= 24.9) {
        categoria = 'Peso normal';
      } else if (resultado >= 25 && resultado <= 29.9) {
        categoria = 'Sobre peso';
      } else if (resultado >= 30 && resultado <= 34.9) {
        categoria = 'Obesidade grau 1';
      } else if (resultado >= 35 && resultado <= 39.9) {
        categoria = 'Obesidade grau 2';
      } else if (resultado >= 40) {
        categoria = 'Obesidade grau 3';
      }
    }
  }
}
