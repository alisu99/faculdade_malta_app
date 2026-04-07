import 'package:faculdade_malta_app/styles/colors.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: RefreshIndicator(
          onRefresh: () {
            return Future.delayed(Duration(seconds: 3));
          },
          color: CustomColor.redMalta,
          child: SingleChildScrollView(
            child: Column(
              children: [
                // container que botei pra simular uma appbar
                Container(
                  padding: .all(15),
                  decoration: BoxDecoration(
                    color: CustomColor.redMalta,
                    borderRadius: .only(
                      bottomLeft: .circular(10),
                      bottomRight: .circular(10),
                    ),
                  ),
                  child: Column(
                    spacing: 25,
                    children: [
                      Row(
                        mainAxisAlignment: .spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: .start,
                            children: [
                              SizedBox(height: 30),
                              Text(
                                'Olá, Alisson!',
                                style: TextStyle(
                                  color: CustomColor.branco,
                                  fontSize: 20,
                                ),
                              ),
                              Text(
                                'Pedagogia (EAD)',
                                style: TextStyle(
                                  color: CustomColor.branco50,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                          CircleAvatar(
                            backgroundColor: CustomColor.branco,
                            child: Text(
                              'AS',
                              style: TextStyle(fontWeight: .w600),
                            ),
                          ),
                        ],
                      ),

                      SizedBox(
                        height: 75,
                        child: PageView(
                          controller: controller,
                          allowImplicitScrolling: true,
                          children: [
                            GestureDetector(
                              onTap: () {},
                              child: Container(
                                margin: .symmetric(horizontal: 3),
                                decoration: BoxDecoration(
                                  color: CustomColor.branco,
                                  borderRadius: .circular(10),
                                ),
                                child: Padding(
                                  padding: .all(10),

                                  child: Row(
                                    spacing: 5,
                                    children: [
                                      Icon(
                                        Icons.calendar_month_outlined,
                                        size: 30,
                                        color: CustomColor.redMalta,
                                      ),

                                      Expanded(
                                        child: Column(
                                          mainAxisAlignment: .center,
                                          crossAxisAlignment: .start,
                                          children: [
                                            Text(
                                              'Calendário 2026.2',
                                              style: TextStyle(
                                                fontWeight: .bold,
                                                fontSize: 17,
                                              ),
                                            ),
                                            Text(
                                              'Confira já o novo calendário acadêmico do período 2026.2',
                                              style: TextStyle(
                                                overflow: TextOverflow.ellipsis,
                                                fontSize: 14,
                                              ),
                                              maxLines: 1,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),

                            GestureDetector(
                              onTap: () {},
                              child: Container(
                                margin: .symmetric(horizontal: 3),
                                decoration: BoxDecoration(
                                  color: CustomColor.branco,
                                  borderRadius: .circular(10),
                                ),
                                child: Padding(
                                  padding: .all(10),

                                  child: Row(
                                    spacing: 5,
                                    children: [
                                      Icon(
                                        Icons.calendar_month_outlined,
                                        size: 30,
                                        color: CustomColor.redMalta,
                                      ),

                                      Expanded(
                                        child: Column(
                                          mainAxisAlignment: .center,
                                          crossAxisAlignment: .start,
                                          children: [
                                            Text(
                                              'Calendário 2026.2',
                                              style: TextStyle(
                                                fontWeight: .bold,
                                                fontSize: 17,
                                              ),
                                            ),
                                            Text(
                                              'Confira já o novo calendário acadêmico do período 2026.2',
                                              style: TextStyle(
                                                overflow: TextOverflow.ellipsis,
                                                fontSize: 14,
                                              ),
                                              maxLines: 1,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),

                            GestureDetector(
                              onTap: () {},
                              child: Container(
                                margin: .symmetric(horizontal: 3),
                                decoration: BoxDecoration(
                                  color: CustomColor.branco,
                                  borderRadius: .circular(10),
                                ),
                                child: Padding(
                                  padding: .all(10),

                                  child: Row(
                                    spacing: 5,
                                    children: [
                                      Icon(
                                        Icons.calendar_month_outlined,
                                        size: 30,
                                        color: CustomColor.redMalta,
                                      ),

                                      Expanded(
                                        child: Column(
                                          mainAxisAlignment: .center,
                                          crossAxisAlignment: .start,
                                          children: [
                                            Text(
                                              'Calendário 2026.2',
                                              style: TextStyle(
                                                fontWeight: .bold,
                                                fontSize: 17,
                                              ),
                                            ),
                                            Text(
                                              'Confira já o novo calendário acadêmico do período 2026.2',
                                              style: TextStyle(
                                                overflow: TextOverflow.ellipsis,
                                                fontSize: 14,
                                              ),
                                              maxLines: 1,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 1),
                    ],
                  ),
                ),
                // fim da "appbar da página inicial"

                // sizedbox pra separar os blocos de widgets
                SizedBox(height: 25),

                // card de disciplinas do período
                Padding(
                  padding: .symmetric(horizontal: 10),
                  child: Column(
                    crossAxisAlignment: .start,
                    spacing: 5,
                    children: [
                      Text(
                        'Disciplinas do período',
                        style: TextStyle(fontSize: 17, fontWeight: .w600),
                      ),

                      SizedBox(
                        height: 75,
                        child: PageView(
                          controller: controller,
                          allowImplicitScrolling: true,
                          children: [
                            GestureDetector(
                              onTap: () {},
                              child: Container(
                                margin: .symmetric(horizontal: 3),
                                decoration: BoxDecoration(
                                  color: CustomColor.branco,
                                  borderRadius: .circular(10),
                                ),
                                child: Padding(
                                  padding: .symmetric(horizontal: 25),

                                  child: Expanded(
                                    child: Column(
                                      mainAxisAlignment: .center,
                                      crossAxisAlignment: .start,
                                      children: [
                                        Text(
                                          'INTRODUÇÃO A PEDAGOGIA',
                                          style: TextStyle(
                                            overflow: .ellipsis,
                                            fontWeight: .bold,
                                            fontSize: 17,
                                          ),
                                        ),
                                        Text(
                                          '4 de 6 modulos',
                                          style: TextStyle(
                                            overflow: .ellipsis,
                                            fontSize: 14,
                                          ),
                                          maxLines: 1,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),

                            GestureDetector(
                              onTap: () {},
                              child: Container(
                                margin: .symmetric(horizontal: 3),
                                decoration: BoxDecoration(
                                  color: CustomColor.branco,
                                  borderRadius: .circular(10),
                                ),
                                child: Padding(
                                  padding: .symmetric(horizontal: 25),

                                  child: Expanded(
                                    child: Column(
                                      mainAxisAlignment: .center,
                                      crossAxisAlignment: .start,
                                      children: [
                                        Text(
                                          'CIÊNCIAS SOCIAIS',
                                          style: TextStyle(
                                            overflow: .ellipsis,
                                            fontWeight: .bold,
                                            fontSize: 17,
                                          ),
                                        ),
                                        Text(
                                          '1 de 6 modulos',
                                          style: TextStyle(
                                            overflow: .ellipsis,
                                            fontSize: 14,
                                          ),
                                          maxLines: 1,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
