import 'package:faculdade_malta_app/styles/colors.dart';
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
                  itemCount: 15,
                  itemBuilder: (context, index) {
                    return GestureDetector(child: Text('$index'));
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
