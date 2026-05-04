import 'package:faculdade_malta_app/styles/colors.dart';
import 'package:flutter/material.dart';

class DetalheBoleto extends StatelessWidget {
  const DetalheBoleto({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: MediaQuery.of(context).size.height * 0.75,
        child: Padding(
          padding: .all(15),
          child: Column(
            spacing: 10,
            crossAxisAlignment: .start,
            children: [
              Text(
                'R\$ 157,26',
                style: TextStyle(
                  color: CustomColor.cinza,
                  fontSize: 25,
                  fontWeight: .bold,
                ),
              ),

              Column(
                crossAxisAlignment: .start,
                children: [
                  Text(
                    'Aluno',
                    style: TextStyle(
                      color: CustomColor.cinza50,
                      fontSize: 14,
                      fontWeight: .bold,
                    ),
                  ),

                  Text(
                    'Alisson Gustavo Alencar Santos',
                    style: TextStyle(
                      color: CustomColor.cinza,
                      fontSize: 17,
                      fontWeight: .bold,
                    ),
                  ),
                ],
              ),

              Row(
                mainAxisAlignment: .spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: .start,
                    children: [
                      Text(
                        'Valor original',
                        style: TextStyle(
                          color: CustomColor.cinza50,
                          fontSize: 14,
                          fontWeight: .bold,
                        ),
                      ),

                      Text(
                        'R\$ 250,00',
                        style: TextStyle(
                          color: CustomColor.cinza,
                          fontSize: 17,
                          fontWeight: .bold,
                        ),
                      ),
                    ],
                  ),

                  Column(
                    crossAxisAlignment: .end,
                    children: [
                      Text(
                        'Valor com desconto',
                        style: TextStyle(
                          color: CustomColor.cinza50,
                          fontSize: 14,
                          fontWeight: .bold,
                        ),
                      ),

                      Text(
                        'R\$ 157,26',
                        style: TextStyle(
                          color: CustomColor.cinza,
                          fontSize: 17,
                          fontWeight: .bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),

              Row(
                mainAxisAlignment: .spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: .start,
                    children: [
                      Text(
                        'Referência',
                        style: TextStyle(
                          color: CustomColor.cinza50,
                          fontSize: 14,
                          fontWeight: .bold,
                        ),
                      ),

                      Text(
                        'Mai/2026',
                        style: TextStyle(
                          color: CustomColor.cinza,
                          fontSize: 17,
                          fontWeight: .bold,
                        ),
                      ),
                    ],
                  ),

                  Column(
                    crossAxisAlignment: .end,
                    children: [
                      Text(
                        'Vencimento',
                        style: TextStyle(
                          color: CustomColor.cinza50,
                          fontSize: 14,
                          fontWeight: .bold,
                        ),
                      ),

                      Text(
                        '23/05/2026',
                        style: TextStyle(
                          color: CustomColor.cinza,
                          fontSize: 17,
                          fontWeight: .bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),

              Expanded(
                child: Row(
                  mainAxisAlignment: .spaceBetween,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: .start,
                        children: [
                          Text(
                            'Curso',
                            style: TextStyle(
                              color: CustomColor.cinza50,
                              fontSize: 14,
                              fontWeight: .bold,
                            ),
                          ),

                          Expanded(
                            child: Text(
                              'Pedagogia',
                              maxLines: 3,
                              overflow: .ellipsis,
                              style: TextStyle(
                                color: CustomColor.cinza,
                                fontSize: 17,
                                fontWeight: .bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    Expanded(
                      child: Column(
                        crossAxisAlignment: .end,
                        children: [
                          Text(
                            'Habilitação',
                            style: TextStyle(
                              color: CustomColor.cinza50,
                              fontSize: 14,
                              fontWeight: .bold,
                            ),
                          ),

                          Expanded(
                            child: Text(
                              'Pedagogia',
                              maxLines: 3,
                              overflow: .ellipsis,
                              style: TextStyle(
                                color: CustomColor.cinza,
                                fontSize: 17,
                                fontWeight: .bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              Text('Id: 908767670980-8'),

              Column(
                spacing: 5,
                children: [
                  InkWell(
                    onTap: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(
                            'Pix copiado!',
                            style: TextStyle(color: CustomColor.branco, fontSize: 16, fontWeight: .bold),
                          ),
                          duration: Duration(milliseconds: 2000),
                          width: MediaQuery.of(context).size.width * 0.90,
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
                    },

                    child: Container(
                      width: 10 * 100,
                      padding: .all(10),
                      decoration: BoxDecoration(
                        color: CustomColor.branco,
                        borderRadius: .all(.circular(7)),
                        border: Border.all(
                          color: CustomColor.redMalta,
                          width: 1.5,
                        ),
                      ),
                      child: Row(
                        spacing: 4,
                        mainAxisAlignment: .center,
                        children: [
                          Icon(Icons.pix, color: CustomColor.redMalta),
                          Text(
                            'Pix copia e cola',
                            style: TextStyle(
                              color: CustomColor.redMalta,
                              fontWeight: .bold,
                              fontSize: 17,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  InkWell(
                    onTap: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(
                            'Código de barras copiado!',
                            style: TextStyle(color: CustomColor.branco, fontSize: 16, fontWeight: .bold),
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
                    },

                    child: Container(
                      width: 10 * 100,
                      padding: .all(10),
                      decoration: BoxDecoration(
                        color: CustomColor.redMalta,
                        borderRadius: .all(.circular(7)),
                      ),
                      child: Row(
                        spacing: 4,
                        mainAxisAlignment: .center,
                        children: [
                          Icon(
                            Icons.qr_code_rounded,
                            color: CustomColor.branco,
                          ),
                          Text(
                            'Código de  barras',
                            style: TextStyle(
                              color: CustomColor.branco,
                              fontWeight: .bold,
                              fontSize: 17,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
