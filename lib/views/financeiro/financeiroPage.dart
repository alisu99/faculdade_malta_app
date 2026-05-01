import 'package:faculdade_malta_app/styles/colors.dart';
import 'package:faculdade_malta_app/views/financeiro/detalheMensalidade.dart';
import 'package:flutter/material.dart';

class FinanceiroPage extends StatelessWidget {
  const FinanceiroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Informações financeiras'),
        shape: RoundedRectangleBorder(
          borderRadius: .only(
            bottomLeft: .circular(10),
            bottomRight: .circular(10),
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: .all(15),
          child: Column(
            spacing: 20,
            children: [
              Column(
                spacing: 10,
                children: [
                  Container(
                    width: 10 * 100,
                    decoration: BoxDecoration(
                      color: CustomColor.branco50,
                      borderRadius: .all(.circular(5)),
                    ),
                    padding: .all(10),
                    child: Column(
                      crossAxisAlignment: .start,
                      children: [
                        Text(
                          'Legendas',
                          style: TextStyle(
                            color: CustomColor.cinza,
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(height: 10),

                        Row(
                          crossAxisAlignment: .center,
                          spacing: 5,
                          children: [
                            Icon(
                              Icons.circle,
                              size: 20,
                              color: CustomColor.amarelo,
                            ),
                            Expanded(
                              child: Text(
                                'Boleto enviado para cobrança terceirizada.',
                                style: TextStyle(fontSize: 16),
                              ),
                            ),
                          ],
                        ),
                        Divider(),

                        Row(
                          crossAxisAlignment: .center,
                          spacing: 5,
                          children: [
                            Icon(
                              Icons.circle,
                              size: 20,
                              color: CustomColor.redMalta,
                            ),
                            Expanded(
                              child: Text(
                                'Opções de pagamento indisponíveis, pois o documento foi cancelado pelo banco.',
                                style: TextStyle(fontSize: 16),
                              ),
                            ),
                          ],
                        ),

                        Divider(),

                        Row(
                          crossAxisAlignment: .center,
                          spacing: 5,
                          children: [
                            Icon(
                              Icons.circle,
                              size: 20,
                              color: CustomColor.azul,
                            ),
                            Expanded(
                              child: Text(
                                'Opções de pagamento indisponíveis, pois o boleto encontra-se inativo.',
                                style: TextStyle(fontSize: 16),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              Expanded(
                child: ListView.builder(
                  itemCount: 6,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        showModalBottomSheet(
                          isScrollControlled: true,
                          showDragHandle: true,
                          backgroundColor: CustomColor.branco,
                          context: context,
                          builder: (context) => DetalheBoleto(),
                        );
                      },
                      child: Container(
                        padding: .all(15),
                        margin: .only(top: 2, bottom: 2),
                        decoration: BoxDecoration(
                          color: CustomColor.branco,
                          borderRadius: .all(.circular(5)),
                        ),

                        child: Row(
                          mainAxisAlignment: .spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: .start,
                              children: [
                                Text(
                                  'R\$ 157,30',
                                  style: TextStyle(
                                    color: CustomColor.cinza,
                                    fontSize: 16,
                                    fontWeight: .bold,
                                  ),
                                ),
                                Text(
                                  'Mens. 0026$index',
                                  style: TextStyle(
                                    color: CustomColor.cinza,
                                    fontSize: 14,
                                    fontWeight: .bold
                                  ),
                                ),
                              ],
                            ),

                            Column(
                              crossAxisAlignment: .end,
                              children: [
                                Text(
                                  'Mai/2026',
                                  style: TextStyle(
                                    color: CustomColor.cinza,
                                    fontSize: 14,
                                    fontWeight: .bold
                                  ),
                                ),
                                Text(
                                  'A vencer',
                                  style: TextStyle(
                                    color: CustomColor.cinza,
                                    fontSize: 14,
                                    fontWeight: .bold
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
