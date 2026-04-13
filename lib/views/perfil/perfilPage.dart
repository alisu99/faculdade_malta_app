import 'package:faculdade_malta_app/styles/colors.dart';
import 'package:flutter/material.dart';

class PerfilPage extends StatelessWidget {
  PerfilPage({super.key});

  final controller = PageController(initialPage: 0);

  final bannerController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Meu perfil')),

      body: SafeArea(
        child: Column(
          children: [
            Container(
              width: 10 * 100,
              padding: .all(15),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [CustomColor.redMalta, CustomColor.redMalta2],
                  begin: AlignmentGeometry.topStart,
                  end: AlignmentGeometry.bottomStart,
                ),
                borderRadius: .only(
                  bottomLeft: .circular(10),
                  bottomRight: .circular(10),
                ),
              ),

              child: Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 1,
                      color: const Color.fromARGB(68, 0, 0, 0),
                      spreadRadius: 1,
                      offset: Offset(0, 4),
                    ),
                  ],
                  color: CustomColor.redMalta3,
                  borderRadius: .all(.circular(10)),
                  border: BoxBorder.all(color: CustomColor.branco50, width: 1),
                ),
                padding: .all(15),
                child: Column(
                  children: [
                    Row(
                      spacing: 10,
                      children: [
                        // imagem ou iniciais de perfil
                        Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                            color: CustomColor.branco,
                            borderRadius: .all(.circular(100)),
                          ),
                          child: Row(
                            mainAxisAlignment: .center,
                            children: [
                              Text(
                                'AS',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: .bold,
                                ),
                              ),
                            ],
                          ),
                        ),

                        Expanded(
                          child: Column(
                            spacing: 5,
                            crossAxisAlignment: .start,
                            children: [
                              Text(
                                'Alisson G A Santos',
                                style: TextStyle(
                                  color: CustomColor.branco,
                                  fontSize: 14,
                                  fontWeight: .bold,
                                  
                                ),
                              ),
                          
                              Column(
                                crossAxisAlignment: .start,
                                children: [
                                  Text(
                                    'Curso',
                                    style: TextStyle(
                                      color: CustomColor.branco50,
                                      fontSize: 12,
                                      fontWeight: .bold,
                                    ),
                                  ),
                          
                                  Text(
                                    'Pedagogia',
                                    style: TextStyle(
                                      color: CustomColor.branco,
                                      fontSize: 14,
                                      fontWeight: .bold,
                                    ),
                                  ),
                                ],
                              ),
                          
                              Column(
                                crossAxisAlignment: .start,
                                children: [
                                  Text(
                                    'Conclusão',
                                    style: TextStyle(
                                      color: CustomColor.branco50,
                                      fontSize: 12,
                                      fontWeight: .bold,
                                    ),
                                  ),
                          
                                  Text(
                                    'DEZ/2030',
                                    style: TextStyle(
                                      color: CustomColor.branco,
                                      fontSize: 14,
                                      fontWeight: .bold,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),


                        Expanded(
                          child: Column(
                            spacing: 5,
                            crossAxisAlignment: .start,
                            children: [
                          
                              Column(
                                crossAxisAlignment: .start,
                                children: [
                                  Text(
                                    'RA',
                                    style: TextStyle(
                                      color: CustomColor.branco50,
                                      fontSize: 12,
                                      fontWeight: .bold,
                                    ),
                                  ),
                          
                                  Text(
                                    'G-000000',
                                    style: TextStyle(
                                      color: CustomColor.branco,
                                      fontSize: 14,
                                      fontWeight: .bold,
                                    ),
                                  ),
                                ],
                              ),
                          
                              Column(
                                crossAxisAlignment: .start,
                                children: [
                                  Text(
                                    'Habilitação',
                                    style: TextStyle(
                                      color: CustomColor.branco50,
                                      fontSize: 12,
                                      fontWeight: .bold,
                                    ),
                                  ),
                          
                                  Text(
                                    'Pedagogia',
                                    style: TextStyle(
                                      color: CustomColor.branco,
                                      fontSize: 14,
                                      fontWeight: .bold,
                                    ),
                                  ),
                                ],
                              ),
                          
                              Column(
                                crossAxisAlignment: .start,
                                children: [
                                  Text(
                                    'Turno',
                                    style: TextStyle(
                                      color: CustomColor.branco50,
                                      fontSize: 12,
                                      fontWeight: .bold,
                                    ),
                                  ),
                          
                                  Text(
                                    'EAD',
                                    style: TextStyle(
                                      color: CustomColor.branco,
                                      fontSize: 14,
                                      fontWeight: .bold,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),

                    // linha do nível e email
                    Row(
                      crossAxisAlignment: .end,
                      mainAxisAlignment: .spaceBetween,
                      spacing: 10,
                      children: [
                        // coluna do nivel
                        Column(
                          crossAxisAlignment: .start,
                          children: [
                            Text(
                              'Nível',
                              style: TextStyle(
                                color: CustomColor.branco50,
                                fontSize: 12,
                                fontWeight: .bold,
                              ),
                            ),
                            Container(
                              padding: .symmetric(horizontal: 10),
                              decoration: BoxDecoration(
                                color: CustomColor.ouro,
                                borderRadius: .all(.circular(5)),
                              ),
                              child: Text(
                                'Ouro III',
                                style: TextStyle(
                                  color: CustomColor.branco,
                                  fontSize: 14,
                                  fontWeight: .bold,
                                ),
                              ),
                            ),
                          ],
                        ),

                        // email
                        Expanded(
                          child: Text(
                            'alissonsts910@gmail.com',
                            style: TextStyle(
                              color: CustomColor.branco,
                              fontSize: 14,
                              fontWeight: .bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),

            Padding(
              padding: .all(15),
              child: Container(
                padding: .all(10),
                decoration: BoxDecoration(
                  color: CustomColor.ouro,
                  // border: Border.all(color: CustomColor.branco, width: 1),
                  borderRadius: .all(.circular(10)),
                ),

                child: Row(
                  spacing: 10,
                  children: [
                    Icon(Icons.diamond, size: 35, color: CustomColor.branco),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: .start,
                        children: [
                          Text(
                            'O nível da sua conta é Ouro III',
                            style: TextStyle(
                              fontSize: 16,
                              color: CustomColor.branco,
                              fontWeight: .bold,
                            ),
                          ),
                          Text(
                            'Conferir benefícios',
                            style: TextStyle(
                              fontSize: 16,
                              color: CustomColor.branco,
                              fontWeight: .bold,
                            ),
                          ),
                        ],
                      ),
                    ),

                    Icon(
                      Icons.keyboard_arrow_right,
                      size: 35,
                      color: CustomColor.branco,
                    ),
                  ],
                ),
              ),
            ),



            Padding(
              padding: .symmetric(horizontal: 15),
              child: Container(
                width: 10 * 100,
                padding: .all(20),
                decoration: BoxDecoration(
                  color: CustomColor.branco50,
                  borderRadius: .all(.circular(10)),
                ),

                child: Column(
                  spacing: 20,
                  children: [
                    GestureDetector(
                      child: Row(
                        crossAxisAlignment: .center,
                        mainAxisAlignment: .spaceBetween,
                        children: [
                          Text('Dados pessoais', style: TextStyle(fontSize: 16,)),
                          Icon(Icons.keyboard_arrow_right_outlined, size: 30, color: const Color.fromARGB(255, 117, 117, 117),)
                        ],
                      ),
                    ),

                    GestureDetector(
                      child: Row(
                        crossAxisAlignment: .center,
                        mainAxisAlignment: .spaceBetween,
                        children: [
                          Text('Dados profissionais', style: TextStyle(fontSize: 16,)),
                          Icon(Icons.keyboard_arrow_right_outlined, size: 30, color: const Color.fromARGB(255, 117, 117, 117),)
                        ],
                      ),
                    ),

                    GestureDetector(
                      child: Row(
                        crossAxisAlignment: .center,
                        mainAxisAlignment: .spaceBetween,
                        children: [
                          Text('Responsáveis', style: TextStyle(fontSize: 16,)),
                          Icon(Icons.keyboard_arrow_right_outlined, size: 30, color: const Color.fromARGB(255, 117, 117, 117),)
                        ],
                      ),
                    ),

                    GestureDetector(
                      child: Row(
                        crossAxisAlignment: .center,
                        mainAxisAlignment: .spaceBetween,
                        children: [
                          Text('Ficha médica', style: TextStyle(fontSize: 16,)),
                          Icon(Icons.keyboard_arrow_right_outlined, size: 30, color: const Color.fromARGB(255, 117, 117, 117),)
                        ],
                      ),
                    ),

                    GestureDetector(
                      child: Row(
                        crossAxisAlignment: .center,
                        mainAxisAlignment: .spaceBetween,
                        children: [
                          Text('Documentos', style: TextStyle(fontSize: 16,)),
                          Icon(Icons.keyboard_arrow_right_outlined, size: 30, color: const Color.fromARGB(255, 117, 117, 117),)
                        ],
                      ),
                    ),
                  ],
                )
              ),
            ),
          ],
        ),
      ),
    );
  }
}
