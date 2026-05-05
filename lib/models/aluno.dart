import 'package:flutter/material.dart';

class Aluno extends ChangeNotifier {
  String nome;
  String email;
  String cpf;
  String celular;
  String fixo;
  String endereco;


  Aluno({
    this.nome = 'Alisson Gustavo ALencar Santos',
    this.email = '',
    this.cpf = '',
    this.celular = '',
    this.fixo = '',
    this.endereco = '',
  });

  void alterarNome(String nome) {
    this.nome = nome;
    notifyListeners();
  }

    void alterarEmail(String email) {
    this.email = email;
    notifyListeners();
  }

    void alterarCpf(String cpf) {
    this.cpf = cpf;
    notifyListeners();
  }

    void alterarCelular(String celular) {
    this.celular = celular;
    notifyListeners();
  }

    void alterarFixo(String fixo) {
    this.fixo = fixo;
    notifyListeners();
  }

    void alterarEndereco(String endereco) {
    this.endereco = endereco;
    notifyListeners();
  }
}
