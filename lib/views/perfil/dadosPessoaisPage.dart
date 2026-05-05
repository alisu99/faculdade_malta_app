import 'package:faculdade_malta_app/models/aluno.dart';
import 'package:faculdade_malta_app/styles/colors.dart';
import 'package:faculdade_malta_app/views/perfil/dados_pessoais/alterarDadosPage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DadosPessoaisPage extends StatelessWidget {
  const DadosPessoaisPage({super.key});

  @override
  Widget build(BuildContext context) {
    final aluno = context.watch<Aluno>();
    return Scaffold(
      appBar: AppBar(
        title: Text('Dados pessoais'),
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
                onTap: () {
                  showModalBottomSheet(
                    isScrollControlled: true,
                    context: context,
                    backgroundColor: CustomColor.branco,
                    showDragHandle: true,
                    builder: (context) {
                      return AlterarNomePage();
                    },
                  );
                },
                child: Row(
                  crossAxisAlignment: .center,
                  mainAxisAlignment: .spaceBetween,
                  children: [
                    Text(
                      'Nome',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: CustomColor.cinza,
                      ),
                    ),

                    Row(
                      children: [
                        Container(
                          alignment: .bottomEnd,
                          width: 100,
                          child: Text(
                            aluno.nome,
                            style: TextStyle(
                              color: CustomColor.cinza50,
                              fontSize: 14,
                              fontWeight: .bold,
                            ),
                            maxLines: 1,
                            overflow: .ellipsis,
                            textAlign: .end,
                          ),
                        ),
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
                onTap: () {
                  showModalBottomSheet(
                    isScrollControlled: true,
                    context: context,
                    backgroundColor: CustomColor.branco,
                    showDragHandle: true,
                    builder: (context) {
                      return AlterarEmailPage();
                    },
                  );
                },
                child: Row(
                  crossAxisAlignment: .center,
                  mainAxisAlignment: .spaceBetween,
                  children: [
                    Text(
                      'E-mail',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: CustomColor.cinza,
                      ),
                    ),

                    Row(
                      children: [
                        Container(
                          alignment: .bottomEnd,
                          width: 100,
                          child: Text(
                            aluno.email,
                            style: TextStyle(
                              color: CustomColor.cinza50,
                              fontSize: 14,
                              fontWeight: .bold,
                            ),
                            maxLines: 1,
                            overflow: .ellipsis,
                            textAlign: .end,
                          ),
                        ),
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
                onTap: () {
                  showModalBottomSheet(
                    isScrollControlled: true,
                    context: context,
                    backgroundColor: CustomColor.branco,
                    showDragHandle: true,
                    builder: (context) {
                      return AlterarCelularPage();
                    },
                  );
                },
                child: Row(
                  crossAxisAlignment: .center,
                  mainAxisAlignment: .spaceBetween,
                  children: [
                    Text(
                      'Celular',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: CustomColor.cinza,
                      ),
                    ),

                    Row(
                      children: [
                        Container(
                          alignment: .bottomEnd,
                          width: 100,
                          child: Text(
                            aluno.celular,
                            style: TextStyle(
                              color: CustomColor.cinza50,
                              fontSize: 14,
                              fontWeight: .bold,
                            ),
                            maxLines: 1,
                            overflow: .ellipsis,
                            textAlign: .end,
                          ),
                        ),
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
                onTap: () {
                  showModalBottomSheet(
                    isScrollControlled: true,
                    context: context,
                    backgroundColor: CustomColor.branco,
                    showDragHandle: true,
                    builder: (context) {
                      return AlterarFixoPage();
                    },
                  );
                },
                child: Row(
                  crossAxisAlignment: .center,
                  mainAxisAlignment: .spaceBetween,
                  children: [
                    Text(
                      'Telefone Fixo',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: CustomColor.cinza,
                      ),
                    ),

                    Row(
                      children: [
                        Container(
                          alignment: .bottomEnd,
                          width: 100,
                          child: Text(
                            aluno.fixo,
                            style: TextStyle(
                              color: CustomColor.cinza50,
                              fontSize: 14,
                              fontWeight: .bold,
                            ),
                            maxLines: 1,
                            overflow: .ellipsis,
                            textAlign: .end,
                          ),
                        ),
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

              // InkWell(
              //   onTap: () {
              //     showModalBottomSheet(
              //       isScrollControlled: true,
              //       context: context,
              //       backgroundColor: CustomColor.branco,
              //       showDragHandle: true,
              //       builder: (context) {
              //         return AlterarFixoPage();
              //       },
              //     );
              //   },
              //   child: Row(
              //     crossAxisAlignment: .center,
              //     mainAxisAlignment: .spaceBetween,
              //     children: [
              //       Text(
              //         'Endereco',
              //         style: TextStyle(
              //           fontWeight: FontWeight.bold,
              //           fontSize: 16,
              //           color: CustomColor.cinza,
              //         ),
              //       ),

              //       Row(
              //         children: [
              //           Container(
              //             alignment: .bottomEnd,
              //             width: 100,
              //             child: Text(
              //               aluno.endereco,
              //               style: TextStyle(
              //                 color: CustomColor.cinza50,
              //                 fontSize: 14,
              //                 fontWeight: .bold,
              //               ),
              //               maxLines: 1,
              //               overflow: .ellipsis,
              //               textAlign: .end,
              //             ),
              //           ),
              //           Icon(
              //             Icons.keyboard_arrow_right_outlined,
              //             size: 30,
              //             color: const Color.fromARGB(255, 117, 117, 117),
              //           ),
              //         ],
              //       ),
              //     ],
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
