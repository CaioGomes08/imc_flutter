// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'imc_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ImcModel on _ImcModelBase, Store {
  final _$alturaAtom = Atom(name: '_ImcModelBase.altura');

  @override
  String get altura {
    _$alturaAtom.context.enforceReadPolicy(_$alturaAtom);
    _$alturaAtom.reportObserved();
    return super.altura;
  }

  @override
  set altura(String value) {
    _$alturaAtom.context.conditionallyRunInAction(() {
      super.altura = value;
      _$alturaAtom.reportChanged();
    }, _$alturaAtom, name: '${_$alturaAtom.name}_set');
  }

  final _$pesoAtom = Atom(name: '_ImcModelBase.peso');

  @override
  String get peso {
    _$pesoAtom.context.enforceReadPolicy(_$pesoAtom);
    _$pesoAtom.reportObserved();
    return super.peso;
  }

  @override
  set peso(String value) {
    _$pesoAtom.context.conditionallyRunInAction(() {
      super.peso = value;
      _$pesoAtom.reportChanged();
    }, _$pesoAtom, name: '${_$pesoAtom.name}_set');
  }

  final _$categoriaAtom = Atom(name: '_ImcModelBase.categoria');

  @override
  String get categoria {
    _$categoriaAtom.context.enforceReadPolicy(_$categoriaAtom);
    _$categoriaAtom.reportObserved();
    return super.categoria;
  }

  @override
  set categoria(String value) {
    _$categoriaAtom.context.conditionallyRunInAction(() {
      super.categoria = value;
      _$categoriaAtom.reportChanged();
    }, _$categoriaAtom, name: '${_$categoriaAtom.name}_set');
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
  void setAltura(String value) {
    final _$actionInfo = _$_ImcModelBaseActionController.startAction();
    try {
      return super.setAltura(value);
    } finally {
      _$_ImcModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setPeso(String value) {
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
  dynamic verificaCategoria() {
    final _$actionInfo = _$_ImcModelBaseActionController.startAction();
    try {
      return super.verificaCategoria();
    } finally {
      _$_ImcModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string =
        'altura: ${altura.toString()},peso: ${peso.toString()},categoria: ${categoria.toString()},resultado: ${resultado.toString()}';
    return '{$string}';
  }
}
