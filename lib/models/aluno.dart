import 'package:flutter/material.dart';

class Aluno extends ChangeNotifier {
  String nome;
  String email;
  String cpf;
  String idade;
  String curso;
  String nivel;

  Aluno({
    this.nome = 'Alisson Gustavo ALencar Santos',
    this.email = '',
    this.cpf = '',
    this.idade = '',
    this.curso = '',
    this.nivel = '',
  });

  void alterarNome(String nome) {
    this.nome = nome;
    notifyListeners();
  }
}
