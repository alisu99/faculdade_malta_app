import 'package:faculdade_malta_app/models/aluno.dart';
import 'package:faculdade_malta_app/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DadosPessoaisPage extends StatefulWidget {
  const DadosPessoaisPage({super.key});

  @override
  State<DadosPessoaisPage> createState() => _DadosPessoaisPageState();
}

class _DadosPessoaisPageState extends State<DadosPessoaisPage> {
  @override
  Widget build(BuildContext context) {
    final aluno = context.watch<Aluno>();
    return Scaffold(
      appBar: AppBar(
        title: Text('Dados pessoais'),
        shape: RoundedRectangleBorder(
          borderRadius: .only(
            bottomLeft: .circular(10),
            bottomRight: .circular(10),
          ),
        ),
      ),

      body: SingleChildScrollView(
        padding: .all(15),
        child: Container(
          width: 10 * 100,
          padding: .all(20),
          decoration: BoxDecoration(
            color: CustomColor.branco50,
            borderRadius: .all(.circular(7)),
          ),

          child: Column(
            spacing: 20,
            children: [
              InkWell(
                onTap: () {},
                child: Row(
                  crossAxisAlignment: .center,
                  mainAxisAlignment: .spaceBetween,
                  children: [
                    Text('Nome', style: TextStyle(fontSize: 16)),

                    Row(
                      children: [
                        Text(aluno.nome.toString(), style: TextStyle(color: CustomColor.cinza50),),
                        Icon(
                          Icons.keyboard_arrow_right_outlined,
                          size: 30,
                          color: const Color.fromARGB(255, 117, 117, 117),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              InkWell(
                child: Row(
                  crossAxisAlignment: .center,
                  mainAxisAlignment: .spaceBetween,
                  children: [
                    Text('Dados profissionais', style: TextStyle(fontSize: 16)),
                    Icon(
                      Icons.keyboard_arrow_right_outlined,
                      size: 30,
                      color: const Color.fromARGB(255, 117, 117, 117),
                    ),
                  ],
                ),
              ),

              InkWell(
                child: Row(
                  crossAxisAlignment: .center,
                  mainAxisAlignment: .spaceBetween,
                  children: [
                    Text('Responsáveis', style: TextStyle(fontSize: 16)),
                    Icon(
                      Icons.keyboard_arrow_right_outlined,
                      size: 30,
                      color: const Color.fromARGB(255, 117, 117, 117),
                    ),
                  ],
                ),
              ),

              InkWell(
                child: Row(
                  crossAxisAlignment: .center,
                  mainAxisAlignment: .spaceBetween,
                  children: [
                    Text('Ficha médica', style: TextStyle(fontSize: 16)),
                    Icon(
                      Icons.keyboard_arrow_right_outlined,
                      size: 30,
                      color: const Color.fromARGB(255, 117, 117, 117),
                    ),
                  ],
                ),
              ),

              InkWell(
                child: Row(
                  crossAxisAlignment: .center,
                  mainAxisAlignment: .spaceBetween,
                  children: [
                    Text('Documentos', style: TextStyle(fontSize: 16)),
                    Icon(
                      Icons.keyboard_arrow_right_outlined,
                      size: 30,
                      color: const Color.fromARGB(255, 117, 117, 117),
                    ),
                  ],
                ),
              ),

              InkWell(
                onTap: () => showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text(
                        'Deseja encerrar a sessão?',
                        style: TextStyle(fontSize: 18),
                      ),

                      actions: [
                        TextButton(
                          style: TextButton.styleFrom(
                            overlayColor: Colors.transparent,
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text(
                            'Cancelar',
                            style: TextStyle(
                              color: CustomColor.cinza,
                              fontSize: 18,
                              fontWeight: .bold,
                            ),
                          ),
                        ),

                        TextButton(
                          style: TextButton.styleFrom(
                            overlayColor: Colors.transparent,
                          ),
                          onPressed: () {
                            Navigator.pushReplacementNamed(context, 'login');
                          },
                          child: Text(
                            'Sim, quero sair',
                            style: TextStyle(
                              color: CustomColor.cinza,
                              fontSize: 18,
                              fontWeight: .bold,
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                ),
                child: Row(
                  crossAxisAlignment: .center,
                  mainAxisAlignment: .spaceBetween,
                  children: [
                    Text(
                      'Sair',
                      style: TextStyle(
                        fontSize: 16,
                        color: CustomColor.redMalta,
                      ),
                    ),
                    Icon(
                      Icons.keyboard_arrow_right_outlined,
                      size: 30,
                      color: CustomColor.redMalta,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
