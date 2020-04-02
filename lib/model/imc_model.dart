import 'dart:ffi';

import 'package:mobx/mobx.dart';

part 'imc_model.g.dart';

class ImcModel = _ImcModelBase with _$ImcModel;

// Calculo IMC é peso / altura * altura

abstract class _ImcModelBase with Store {
  @observable
  double altura = 0;
  @observable
  double peso = 0;

  @observable
  double resultado = 0;

  @action
  void setAltura(double value) {
    altura = value;
  }

  @action
  setPeso(double value) {
    peso = value;
  }

  @action
  void calcular() {
    resultado = peso / (altura * altura);
  }
}
