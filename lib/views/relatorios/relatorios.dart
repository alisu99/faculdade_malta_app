import 'package:faculdade_malta_app/styles/colors.dart';
import 'package:flutter/material.dart';

class RelatorioPage extends StatelessWidget {
  RelatorioPage({super.key});

  final controller = PageController(initialPage: 0);

  final bannerController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Relatórios'),
        shape: RoundedRectangleBorder(
          borderRadius: .only(
            bottomLeft: .circular(10),
            bottomRight: .circular(10),
          ),
        ),
      ),

      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: .all(15),
              child: Column(
                spacing: 10,
                children: [
                  
                  
                  GestureDetector(
                    child: Container(
                      padding: .all(15),
                      decoration: BoxDecoration(
                        color: CustomColor.branco50,
                        borderRadius: .all(.circular(10))
                        ),
                      child: Row(
                        mainAxisAlignment: .spaceBetween,
                        children: [
                          Row(
                            spacing: 10,
                            children: [
                              Icon(
                                Icons.document_scanner,
                                color: CustomColor.redMalta,
                              ),
                          
                              Column(
                                crossAxisAlignment: .start,
                                children: [
                                  Text('BOLETIM - NOTAS/CARGA HORÁRIA', style: TextStyle(fontSize: 15, fontWeight: .bold),),
                                  Text('Secretaria', style: TextStyle(color: CustomColor.cinza, fontSize: 14, fontWeight: .bold),),
                                ],
                              ),
                            ],
                          ),
                          Icon(Icons.arrow_forward_ios),
                        ],
                      ),
                    ),
                  ),


                  GestureDetector(
                    child: Container(
                      padding: .all(15),
                      decoration: BoxDecoration(
                        color: CustomColor.branco50,
                        borderRadius: .all(.circular(10))
                        ),
                      child: Row(
                        mainAxisAlignment: .spaceBetween,
                        children: [
                          Row(
                            spacing: 10,
                            children: [
                              Icon(
                                Icons.document_scanner,
                                color: CustomColor.redMalta,
                              ),
                          
                              Column(
                                crossAxisAlignment: .start,
                                children: [
                                  Text('DECLARAÇÃO DE IMPOSTO DE RENDA', style: TextStyle(fontSize: 15, fontWeight: .bold),),
                                  Text('Tesouraria', style: TextStyle(color: CustomColor.cinza, fontSize: 14, fontWeight: .bold),),
                                ],
                              ),
                            ],
                          ),
                          Icon(Icons.arrow_forward_ios),
                        ],
                      ),
                    ),
                  ),


                  GestureDetector(
                    child: Container(
                      padding: .all(15),
                      decoration: BoxDecoration(
                        color: CustomColor.branco50,
                        borderRadius: .all(.circular(10))
                        ),
                      child: Row(
                        mainAxisAlignment: .spaceBetween,
                        children: [
                          Row(
                            spacing: 10,
                            children: [
                              Icon(
                                Icons.document_scanner,
                                color: CustomColor.redMalta,
                              ),
                          
                              Column(
                                crossAxisAlignment: .start,
                                children: [
                                  Text('DECLARAÇÃO DE MATRÍCULA', style: TextStyle(fontSize: 15, fontWeight: .bold),),
                                  Text('Secretaria', style: TextStyle(color: CustomColor.cinza, fontSize: 14, fontWeight: .bold),),
                                ],
                              ),
                            ],
                          ),
                          Icon(Icons.arrow_forward_ios),
                        ],
                      ),
                    ),
                  ),


                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
