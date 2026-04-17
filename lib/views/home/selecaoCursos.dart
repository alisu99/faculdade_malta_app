import 'package:faculdade_malta_app/styles/colors.dart';
import 'package:flutter/material.dart';

class SelecaoCursos extends StatefulWidget {
  const SelecaoCursos({super.key});

  @override
  State<SelecaoCursos> createState() => _SelecaoCursosState();
}

class _SelecaoCursosState extends State<SelecaoCursos> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: .all(10),
        width: 10 * 100,
        child: Column(
          spacing: 10,
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: .stretch,
                  spacing: 10,
                  children: [
                    
                    Container(
                      padding: .all(10),
                      decoration: BoxDecoration(
                        color: CustomColor.branco50,
                        borderRadius: .all(.circular(10))
                      ),
                      child: Row(
                        children: [
                          Radio(value: '', ),
                          
                          Expanded(
                            child: Column(
                              crossAxisAlignment: .start,
                              children: [
                                Text('PEDAGOGIA (EAD)', style: TextStyle(color: const Color.fromARGB(154, 0, 0, 0), fontSize: 14, fontWeight: .bold),),
                                Text('Habilitação: PEDAGOGIA', style: TextStyle(color: CustomColor.cinza, fontSize: 14),),
                                Text('Período letivo: 2025.1', style: TextStyle(color: CustomColor.cinza, fontSize: 14),),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    
                    Container(
                      padding: .all(10),
                      decoration: BoxDecoration(
                        color: CustomColor.branco50,
                        borderRadius: .all(.circular(10))
                      ),
                      child: Row(
                        children: [
                          Radio(value: '', ),
                          
                          Expanded(
                            child: Column(
                              crossAxisAlignment: .start,
                              children: [
                                Text('ATENDIMENTO EDUCACIONAL ESPECIALIZADO - AEE (DOMINGO)', style: TextStyle(color: const Color.fromARGB(154, 0, 0, 0), fontSize: 14, fontWeight: .bold),),
                                Text('Habilitação: LATO SENSU', style: TextStyle(color: CustomColor.cinza, fontSize: 14),),
                                Text('Período letivo: 2025.1', style: TextStyle(color: CustomColor.cinza, fontSize: 14),),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
              
                    Container(
                      padding: .all(10),
                      decoration: BoxDecoration(
                        color: CustomColor.branco50,
                        borderRadius: .all(.circular(10))
                      ),
                      child: Row(
                        children: [
                          Radio(value: '', ),
                          
                          Expanded(
                            child: Column(
                              crossAxisAlignment: .start,
                              children: [
                                Text('PSICOPEDAGOGIA CLÍNICA E INSTITUCIONAL (DOMINGO)', style: TextStyle(color: const Color.fromARGB(154, 0, 0, 0), fontSize: 14, fontWeight: .bold),),
                                Text('Habilitação: LATO SENSU', style: TextStyle(color: CustomColor.cinza, fontSize: 14),),
                                Text('Período letivo: 2025.1', style: TextStyle(color: CustomColor.cinza, fontSize: 14),),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                
                
                  ],
                ),
              ),
            ),
            GestureDetector(
              child: Container(
                width: 10 * 100,
                padding: .all(10),
                decoration: BoxDecoration(
                  color: CustomColor.redMalta,
                  borderRadius: .all(.circular(7))
                ),
                child: Center(
                  child: Text('Selecionar', style: TextStyle(color: CustomColor.branco, fontSize: 14, fontWeight: .bold),),
                ),
              ),
            )
          ],
        ),
      
      ),
    );
  }
}