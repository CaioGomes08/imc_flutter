// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'imc_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ImcModel on _ImcModelBase, Store {
  final _$alturaAtom = Atom(name: '_ImcModelBase.altura');

  @override
  double get altura {
    _$alturaAtom.context.enforceReadPolicy(_$alturaAtom);
    _$alturaAtom.reportObserved();
    return super.altura;
  }

  @override
  set altura(double value) {
    _$alturaAtom.context.conditionallyRunInAction(() {
      super.altura = value;
      _$alturaAtom.reportChanged();
    }, _$alturaAtom, name: '${_$alturaAtom.name}_set');
  }

  final _$pesoAtom = Atom(name: '_ImcModelBase.peso');

  @override
  double get peso {
    _$pesoAtom.context.enforceReadPolicy(_$pesoAtom);
    _$pesoAtom.reportObserved();
    return super.peso;
  }

  @override
  set peso(double value) {
    _$pesoAtom.context.conditionallyRunInAction(() {
      super.peso = value;
      _$pesoAtom.reportChanged();
    }, _$pesoAtom, name: '${_$pesoAtom.name}_set');
  }

  final _$resultadoAtom = Atom(name: '_ImcModelBase.resultado');

  @override
  double get resultado {
    _$resultadoAtom.context.enforceReadPolicy(_$resultadoAtom);
    _$resultadoAtom.reportObserved();
    return super.resultado;
  }

  @override
  set resultado(double value) {
    _$resultadoAtom.context.conditionallyRunInAction(() {
      super.resultado = value;
      _$resultadoAtom.reportChanged();
    }, _$resultadoAtom, name: '${_$resultadoAtom.name}_set');
  }

  final _$_ImcModelBaseActionController =
      ActionController(name: '_ImcModelBase');

  @override
  void setAltura(double value) {
    final _$actionInfo = _$_ImcModelBaseActionController.startAction();
    try {
      return super.setAltura(value);
    } finally {
      _$_ImcModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setPeso(double value) {
    final _$actionInfo = _$_ImcModelBaseActionController.startAction();
    try {
      return super.setPeso(value);
    } finally {
      _$_ImcModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void calcular() {
    final _$actionInfo = _$_ImcModelBaseActionController.startAction();
    try {
      return super.calcular();
    } finally {
      _$_ImcModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string =
        'altura: ${altura.toString()},peso: ${peso.toString()},resultado: ${resultado.toString()}';
    return '{$string}';
  }
}
