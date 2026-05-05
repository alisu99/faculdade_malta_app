import 'package:faculdade_malta_app/models/aluno.dart';
import 'package:faculdade_malta_app/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AlterarNomePage extends StatelessWidget {
  const AlterarNomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final aluno = context.watch<Aluno>();
    final nomeController = TextEditingController();
    return SafeArea(
      child: Container(
        color: CustomColor.branco,
        height: MediaQuery.of(context).size.height * 0.75,
        child: Padding(
          padding: .all(10),
          child: Column(
            spacing: 10,
            crossAxisAlignment: .start,
            children: [
              Text(
                'Alterar nome',
                style: TextStyle(
                  color: CustomColor.cinza,
                  fontSize: 20,
                  fontWeight: .bold,
                ),
              ),

              Column(
                crossAxisAlignment: .start,
                children: [
                  TextField(
                    controller: nomeController,
                    decoration: InputDecoration(
                      label: Text(
                        'Nome',
                        style: TextStyle(
                          color: CustomColor.cinza50,
                          fontWeight: .bold,
                          fontSize: 15,
                        ),
                      ),

                      contentPadding: .all(15),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: .circular(7),
                        borderSide: BorderSide(
                          color: CustomColor.gainsboro,
                          width: 1.5,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: .circular(7),
                        borderSide: BorderSide(
                          color: CustomColor.redMalta,
                          width: 1.5,
                        ),
                      ),
                      hintText: 'Digite seu nome',
                      hintStyle: TextStyle(
                        color: const Color.fromARGB(112, 0, 0, 0),
                        fontWeight: .bold,
                      ),
                    ),
                  ),
                ],
              ),

              Text(
                'Digite seu nome completo, sem números ou caracteres especiais. Você só pode alterar seu nome 2 vezes.',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: .bold,
                  color: CustomColor.cinza50,
                ),
              ),

              InkWell(
                onTap: () {
                  if (nomeController.text == '') {
                    
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(
                          'Digite um nome para salvar!',
                          style: TextStyle(
                            color: CustomColor.branco,
                            fontSize: 16,
                            fontWeight: .bold,
                          ),
                        ),
                        duration: Duration(milliseconds: 2000),
                        width: MediaQuery.of(context).size.width * 0.90,
                        animation: AlwaysStoppedAnimation(
                          CircularProgressIndicator.strokeAlignCenter,
                        ),
                        padding: .all(12),
                        behavior: SnackBarBehavior.floating,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(7),
                        ),
                        elevation: 10,
                        backgroundColor: CustomColor.redMalta,
                      ),
                    );
                    Navigator.pop(context);

                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(
                          'Nome alterado para ${nomeController.text}!',
                          style: TextStyle(
                            color: CustomColor.branco,
                            fontSize: 16,
                            fontWeight: .bold,
                          ),
                        ),
                        duration: Duration(milliseconds: 2000),
                        width: MediaQuery.of(context).size.width * 0.90,
                        animation: AlwaysStoppedAnimation(
                          CircularProgressIndicator.strokeAlignCenter,
                        ),
                        padding: .all(12),
                        behavior: SnackBarBehavior.floating,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(7),
                        ),
                        elevation: 10,
                        backgroundColor: CustomColor.redMalta,
                      ),
                    );

                    Navigator.pop(context);
                    return aluno.alterarNome(nomeController.text);
                  }
                },

                child: Container(
                  width: 10 * 100,
                  padding: .all(10),
                  decoration: BoxDecoration(
                    color: CustomColor.redMalta,
                    borderRadius: .all(.circular(7)),
                  ),
                  child: Text(
                    'Salvar',
                    style: TextStyle(
                      color: CustomColor.branco,
                      fontWeight: .bold,
                      fontSize: 17,
                    ),
                    textAlign: .center,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


class AlterarEmailPage extends StatelessWidget {
  const AlterarEmailPage({super.key});

  @override
  Widget build(BuildContext context) {
    final emailController = TextEditingController();
    final aluno = context.watch<Aluno>();
    return SafeArea(
      child: Container(
        color: CustomColor.branco,
        height: MediaQuery.of(context).size.height * 0.75,
        child: Padding(
          padding: .all(10),
          child: Column(
            spacing: 10,
            crossAxisAlignment: .start,
            children: [
              Text(
                'Alterar e-mail',
                style: TextStyle(
                  color: CustomColor.cinza,
                  fontSize: 20,
                  fontWeight: .bold,
                ),
              ),

              Column(
                crossAxisAlignment: .start,
                children: [
                  TextField(
                    controller: emailController,
                    decoration: InputDecoration(
                      label: Text(
                        'E-mail',
                        style: TextStyle(
                          color: CustomColor.cinza50,
                          fontWeight: .bold,
                          fontSize: 15,
                        ),
                      ),

                      contentPadding: .all(15),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: .circular(7),
                        borderSide: BorderSide(
                          color: CustomColor.gainsboro,
                          width: 1.5,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: .circular(7),
                        borderSide: BorderSide(
                          color: CustomColor.redMalta,
                          width: 1.5,
                        ),
                      ),
                      hintText: 'Digite um novo e-mail',
                      hintStyle: TextStyle(
                        color: const Color.fromARGB(112, 0, 0, 0),
                        fontWeight: .bold,
                      ),
                    ),
                  ),
                ],
              ),

              Text(
                'Digite um email válido.',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: .bold,
                  color: CustomColor.cinza50,
                ),
              ),

              InkWell(
                onTap: () {
                  if (emailController.text == '') {
                    
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(
                          'Digite um e-mail para salvar!',
                          style: TextStyle(
                            color: CustomColor.branco,
                            fontSize: 16,
                            fontWeight: .bold,
                          ),
                        ),
                        duration: Duration(milliseconds: 2000),
                        width: MediaQuery.of(context).size.width * 0.90,
                        animation: AlwaysStoppedAnimation(
                          CircularProgressIndicator.strokeAlignCenter,
                        ),
                        padding: .all(12),
                        behavior: SnackBarBehavior.floating,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(7),
                        ),
                        elevation: 10,
                        backgroundColor: CustomColor.redMalta,
                      ),
                    );
                    Navigator.pop(context);

                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(
                          'E-mail alterado para ${emailController.text}!',
                          style: TextStyle(
                            color: CustomColor.branco,
                            fontSize: 16,
                            fontWeight: .bold,
                          ),
                        ),
                        duration: Duration(milliseconds: 2000),
                        width: MediaQuery.of(context).size.width * 0.90,
                        animation: AlwaysStoppedAnimation(
                          CircularProgressIndicator.strokeAlignCenter,
                        ),
                        padding: .all(12),
                        behavior: SnackBarBehavior.floating,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(7),
                        ),
                        elevation: 10,
                        backgroundColor: CustomColor.redMalta,
                      ),
                    );

                    Navigator.pop(context);
                    return aluno.alterarEmail(emailController.text);
                  }
                },

                child: Container(
                  width: 10 * 100,
                  padding: .all(10),
                  decoration: BoxDecoration(
                    color: CustomColor.redMalta,
                    borderRadius: .all(.circular(7)),
                  ),
                  child: Text(
                    'Salvar',
                    style: TextStyle(
                      color: CustomColor.branco,
                      fontWeight: .bold,
                      fontSize: 17,
                    ),
                    textAlign: .center,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class AlterarCelularPage extends StatelessWidget {
  const AlterarCelularPage({super.key});

  @override
  Widget build(BuildContext context) {
    final celularController = TextEditingController();
    final aluno = context.watch<Aluno>();
    return SafeArea(
      child: Container(
        color: CustomColor.branco,
        height: MediaQuery.of(context).size.height * 0.75,
        child: Padding(
          padding: .all(10),
          child: Column(
            spacing: 10,
            crossAxisAlignment: .start,
            children: [
              Text(
                'Alterar celular',
                style: TextStyle(
                  color: CustomColor.cinza,
                  fontSize: 20,
                  fontWeight: .bold,
                ),
              ),

              Column(
                crossAxisAlignment: .start,
                children: [
                  TextField(
                    controller: celularController,
                    decoration: InputDecoration(
                      label: Text(
                        'Celular',
                        style: TextStyle(
                          color: CustomColor.cinza50,
                          fontWeight: .bold,
                          fontSize: 15,
                        ),
                      ),

                      contentPadding: .all(15),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: .circular(7),
                        borderSide: BorderSide(
                          color: CustomColor.gainsboro,
                          width: 1.5,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: .circular(7),
                        borderSide: BorderSide(
                          color: CustomColor.redMalta,
                          width: 1.5,
                        ),
                      ),
                      hintText: 'Ex: (XX) XXXXX-XXXX',
                      hintStyle: TextStyle(
                        color: const Color.fromARGB(112, 0, 0, 0),
                        fontWeight: .bold,
                      ),
                    ),
                  ),
                ],
              ),

              Text(
                'Digite número válido. Você receberá um código de confirmação para terminar a validação.',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: .bold,
                  color: CustomColor.cinza50,
                ),
              ),

              InkWell(
                onTap: () {
                  if (celularController.text == '') {
                    
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(
                          'Digite um número válido para salvar!',
                          style: TextStyle(
                            color: CustomColor.branco,
                            fontSize: 16,
                            fontWeight: .bold,
                          ),
                        ),
                        duration: Duration(milliseconds: 2000),
                        width: MediaQuery.of(context).size.width * 0.90,
                        animation: AlwaysStoppedAnimation(
                          CircularProgressIndicator.strokeAlignCenter,
                        ),
                        padding: .all(12),
                        behavior: SnackBarBehavior.floating,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(7),
                        ),
                        elevation: 10,
                        backgroundColor: CustomColor.redMalta,
                      ),
                    );
                    Navigator.pop(context);

                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(
                          'Celular alterado para ${celularController.text}!',
                          style: TextStyle(
                            color: CustomColor.branco,
                            fontSize: 16,
                            fontWeight: .bold,
                          ),
                        ),
                        duration: Duration(milliseconds: 2000),
                        width: MediaQuery.of(context).size.width * 0.90,
                        animation: AlwaysStoppedAnimation(
                          CircularProgressIndicator.strokeAlignCenter,
                        ),
                        padding: .all(12),
                        behavior: SnackBarBehavior.floating,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(7),
                        ),
                        elevation: 10,
                        backgroundColor: CustomColor.redMalta,
                      ),
                    );

                    Navigator.pop(context);
                    return aluno.alterarCelular(celularController.text);
                  }
                },

                child: Container(
                  width: 10 * 100,
                  padding: .all(10),
                  decoration: BoxDecoration(
                    color: CustomColor.redMalta,
                    borderRadius: .all(.circular(7)),
                  ),
                  child: Text(
                    'Salvar',
                    style: TextStyle(
                      color: CustomColor.branco,
                      fontWeight: .bold,
                      fontSize: 17,
                    ),
                    textAlign: .center,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


class AlterarFixoPage extends StatelessWidget {
  const AlterarFixoPage({super.key});

  @override
  Widget build(BuildContext context) {
    final fixoController = TextEditingController();
    final aluno = context.watch<Aluno>();
    return SafeArea(
      child: Container(
        color: CustomColor.branco,
        height: MediaQuery.of(context).size.height * 0.75,
        child: Padding(
          padding: .all(10),
          child: Column(
            spacing: 10,
            crossAxisAlignment: .start,
            children: [
              Text(
                'Alterar Telefone fixo',
                style: TextStyle(
                  color: CustomColor.cinza,
                  fontSize: 20,
                  fontWeight: .bold,
                ),
              ),

              Column(
                crossAxisAlignment: .start,
                children: [
                  TextField(
                    controller: fixoController,
                    decoration: InputDecoration(
                      label: Text(
                        'Telefone fixo',
                        style: TextStyle(
                          color: CustomColor.cinza50,
                          fontWeight: .bold,
                          fontSize: 15,
                        ),
                      ),

                      contentPadding: .all(15),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: .circular(7),
                        borderSide: BorderSide(
                          color: CustomColor.gainsboro,
                          width: 1.5,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: .circular(7),
                        borderSide: BorderSide(
                          color: CustomColor.redMalta,
                          width: 1.5,
                        ),
                      ),
                      hintText: 'Ex: (XX) XXXXX-XXXX',
                      hintStyle: TextStyle(
                        color: const Color.fromARGB(112, 0, 0, 0),
                        fontWeight: .bold,
                      ),
                    ),
                  ),
                ],
              ),

              Text(
                'Digite número válido.',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: .bold,
                  color: CustomColor.cinza50,
                ),
              ),

              InkWell(
                onTap: () {
                  if (fixoController.text == '') {
                    
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(
                          'Digite um número válido para salvar!',
                          style: TextStyle(
                            color: CustomColor.branco,
                            fontSize: 16,
                            fontWeight: .bold,
                          ),
                        ),
                        duration: Duration(milliseconds: 2000),
                        width: MediaQuery.of(context).size.width * 0.90,
                        animation: AlwaysStoppedAnimation(
                          CircularProgressIndicator.strokeAlignCenter,
                        ),
                        padding: .all(12),
                        behavior: SnackBarBehavior.floating,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(7),
                        ),
                        elevation: 10,
                        backgroundColor: CustomColor.redMalta,
                      ),
                    );
                    Navigator.pop(context);

                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(
                          'Telefone fixo alterado para ${fixoController.text}!',
                          style: TextStyle(
                            color: CustomColor.branco,
                            fontSize: 16,
                            fontWeight: .bold,
                          ),
                        ),
                        duration: Duration(milliseconds: 2000),
                        width: MediaQuery.of(context).size.width * 0.90,
                        animation: AlwaysStoppedAnimation(
                          CircularProgressIndicator.strokeAlignCenter,
                        ),
                        padding: .all(12),
                        behavior: SnackBarBehavior.floating,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(7),
                        ),
                        elevation: 10,
                        backgroundColor: CustomColor.redMalta,
                      ),
                    );

                    Navigator.pop(context);
                    return aluno.alterarFixo(fixoController.text);
                  }
                },

                child: Container(
                  width: 10 * 100,
                  padding: .all(10),
                  decoration: BoxDecoration(
                    color: CustomColor.redMalta,
                    borderRadius: .all(.circular(7)),
                  ),
                  child: Text(
                    'Salvar',
                    style: TextStyle(
                      color: CustomColor.branco,
                      fontWeight: .bold,
                      fontSize: 17,
                    ),
                    textAlign: .center,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}