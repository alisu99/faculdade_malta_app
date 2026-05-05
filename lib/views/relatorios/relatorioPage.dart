import 'package:faculdade_malta_app/styles/colors.dart';
import 'package:flutter/material.dart';

class RelatorioPage extends StatelessWidget {
  const RelatorioPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Relatórios'),
        // shape: RoundedRectangleBorder(
        //   borderRadius: .only(
        //     bottomLeft: .circular(10),
        //     bottomRight: .circular(10),
        //   ),
        // ),
      ),

      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: .all(15),
              child: Column(
                spacing: 5,
                children: [
                  InkWell(
                    child: Container(
                      padding: .all(15),
                      decoration: BoxDecoration(
                        color: CustomColor.branco50,
                        borderRadius: .all(.circular(7)),
                      ),
                      child: Row(
                        mainAxisAlignment: .spaceBetween,
                        children: [
                          Expanded(
                            child: Row(
                              spacing: 10,
                              children: [
                                Icon(
                                  Icons.document_scanner,
                                  color: CustomColor.redMalta,
                                ),
                            
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: .start,
                                    children: [
                                      Text(
                                        'BOLETIM - NOTAS/CARGA HORÁRIA',
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: .bold,
                                        ),
                                      ),
                                      Text(
                                        'Secretaria',
                                        style: TextStyle(
                                          color: CustomColor.cinza,
                                          fontSize: 14,
                                          fontWeight: .bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Icon(Icons.arrow_forward_ios),
                        ],
                      ),
                    ),
                  ),

                  InkWell(
                    child: Container(
                      padding: .all(15),
                      decoration: BoxDecoration(
                        color: CustomColor.branco50,
                        borderRadius: .all(.circular(7)),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Row(
                              children: [
                                Icon(
                                  Icons.document_scanner,
                                  color: CustomColor.redMalta,
                                ),
                                SizedBox(width: 10),

                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'DECLARAÇÃO DE IMPOSTO DE RENDA',
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text(
                                        'Tesouraria',
                                        style: TextStyle(
                                          color: CustomColor.cinza,
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),

                          Icon(Icons.arrow_forward_ios),
                        ],
                      ),
                    ),
                  ),

                  InkWell(
                    child: Container(
                      padding: .all(15),
                      decoration: BoxDecoration(
                        color: CustomColor.branco50,
                        borderRadius: .all(.circular(7)),
                      ),
                      child: Row(
                        mainAxisAlignment: .spaceBetween,
                        children: [
                          Expanded(
                            child: Row(
                              spacing: 10,
                              children: [
                                Icon(
                                  Icons.document_scanner,
                                  color: CustomColor.redMalta,
                                ),
                            
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: .start,
                                    children: [
                                      Text(
                                        'DECLARAÇÃO DE MATRÍCULA',
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: .bold,
                                        ),
                                      ),
                                      Text(
                                        'Secretaria',
                                        style: TextStyle(
                                          color: CustomColor.cinza,
                                          fontSize: 14,
                                          fontWeight: .bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Icon(Icons.arrow_forward_ios),
                        ],
                      ),
                    ),
                  ),

                  InkWell(
                    child: Container(
                      padding: .all(15),
                      decoration: BoxDecoration(
                        color: CustomColor.branco50,
                        borderRadius: .all(.circular(7)),
                      ),
                      child: Row(
                        mainAxisAlignment: .spaceBetween,
                        children: [
                          Expanded(
                            child: Row(
                              spacing: 10,
                              children: [
                                Icon(
                                  Icons.document_scanner,
                                  color: CustomColor.redMalta,
                                ),
                            
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: .start,
                                    children: [
                                      Text(
                                        'OUTROS',
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: .bold,
                                        ),
                                      ),
                                      Text(
                                        'Entre em contato para mais opções de relatórios',
                                        style: TextStyle(
                                          color: CustomColor.cinza,
                                          fontSize: 14,
                                          fontWeight: .bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
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
