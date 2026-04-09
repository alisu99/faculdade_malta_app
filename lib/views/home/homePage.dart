import 'package:faculdade_malta_app/styles/colors.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = PageController(initialPage: 0);
  final bannerController = PageController(initialPage: 0);

  bool iSexpanded = false;

  void expandir() {
    setState(() {
      iSexpanded = iSexpanded ? false : true;
    });
  }

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
              spacing: 20,
              children: [
                // container que botei pra simular uma appbar
                Container(
                  padding: .all(10),
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
                                  fontWeight: .bold,
                                ),
                              ),
                              Text(
                                'Pedagogia (EAD)',
                                style: TextStyle(
                                  color: CustomColor.branco50,
                                  fontSize: 16,
                                  fontWeight: .bold,
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
                                  borderRadius: .circular(8),
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
                                                color: CustomColor.cinza,
                                              ),
                                            ),
                                            Text(
                                              'Confira já o novo calendário acadêmico do período 2026.2',
                                              style: TextStyle(
                                                overflow: TextOverflow.ellipsis,
                                                fontSize: 14,
                                                color: CustomColor.cinza,
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
                                  borderRadius: .circular(8),
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
                                                color: CustomColor.cinza,
                                              ),
                                            ),
                                            Text(
                                              'Confira já o novo calendário acadêmico do período 2026.2',
                                              style: TextStyle(
                                                overflow: TextOverflow.ellipsis,
                                                fontSize: 14,
                                                color: CustomColor.cinza,
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
                                  borderRadius: .circular(8),
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
                                                color: CustomColor.cinza,
                                              ),
                                            ),
                                            Text(
                                              'Confira já o novo calendário acadêmico do período 2026.2',
                                              style: TextStyle(
                                                overflow: TextOverflow.ellipsis,
                                                fontSize: 14,
                                                color: CustomColor.cinza,
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
                    ],
                  ),
                ),
                // fim da "appbar da página inicial"


                // card de disciplinas do período
                Padding(
                  padding: .symmetric(horizontal: 10),
                  child: Column(
                    crossAxisAlignment: .start,
                    spacing: 5,
                    children: [
                      Text(
                        'Disciplinas do período',
                        style: TextStyle(
                          fontSize: 17,
                          color: CustomColor.cinza,
                          fontWeight: .w600,
                        ),
                      ),

                      SizedBox(
                        height: 70,
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
                                  borderRadius: .circular(8),
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
                                            color: CustomColor.cinza,
                                          ),
                                        ),
                                        Text(
                                          '4 de 6 modulos',
                                          style: TextStyle(
                                            overflow: .ellipsis,
                                            fontSize: 14,
                                            color: CustomColor.cinza,
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
                                  borderRadius: .circular(8),
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
                                            color: CustomColor.cinza,
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


                Padding(
                  padding: .symmetric(horizontal: 10),
                  child: SizedBox(
                    height: iSexpanded ? 375 : 120,
                    child: GridView.count(
                      primary: false,
                      padding: .all(5),
                      crossAxisSpacing: 14,
                      mainAxisSpacing: 14,
                      crossAxisCount: 3,
                      children: [
                        GestureDetector(
                          child: Container(
                            padding: .all(8),
                            decoration: BoxDecoration(
                              color: CustomColor.branco,
                              borderRadius: .all(.circular(8)),
                            ),
                            child: Column(
                              mainAxisAlignment: .spaceBetween,
                              crossAxisAlignment: .start,
                              children: [
                                Text(
                                  'Calendário acadêmico',
                                  maxLines: 2,
                                  overflow: .ellipsis,
                                  style: TextStyle(
                                    fontWeight: .bold,
                                    fontSize: 15,
                                    color: CustomColor.cinza,
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: .end,
                                  children: [
                                    Icon(
                                      Icons.calendar_month_outlined,
                                      color: CustomColor.redMalta,
                                      size: 35,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),

                        GestureDetector(
                          child: Container(
                            padding: .all(8),
                            decoration: BoxDecoration(
                              color: CustomColor.branco,
                              borderRadius: .all(.circular(8)),
                            ),
                            child: Column(
                              mainAxisAlignment: .spaceBetween,
                              crossAxisAlignment: .start,
                              children: [
                                Text(
                                  'Grade curricular',
                                  maxLines: 2,
                                  overflow: .ellipsis,
                                  style: TextStyle(
                                    fontWeight: .bold,
                                    fontSize: 15,
                                    color: CustomColor.cinza,
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: .end,
                                  children: [
                                    Icon(
                                      Icons.grid_view,
                                      color: CustomColor.redMalta,
                                      size: 35,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),

                        GestureDetector(
                          child: Container(
                            padding: .all(8),
                            decoration: BoxDecoration(
                              color: CustomColor.branco,
                              borderRadius: .all(.circular(8)),
                            ),
                            child: Column(
                              mainAxisAlignment: .spaceBetween,
                              crossAxisAlignment: .start,
                              children: [
                                Text(
                                  'Secretaria',
                                  maxLines: 2,
                                  overflow: .ellipsis,
                                  style: TextStyle(
                                    fontWeight: .bold,
                                    fontSize: 15,
                                    color: CustomColor.cinza,
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: .end,
                                  children: [
                                    Icon(
                                      Icons.menu_book_rounded,
                                      color: CustomColor.redMalta,
                                      size: 35,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),

                        GestureDetector(
                          child: Container(
                            padding: .all(8),
                            decoration: BoxDecoration(
                              color: CustomColor.branco,
                              borderRadius: .all(.circular(8)),
                            ),
                            child: Column(
                              mainAxisAlignment: .spaceBetween,
                              crossAxisAlignment: .start,
                              children: [
                                Text(
                                  'Financeiro',
                                  maxLines: 2,
                                  overflow: .ellipsis,
                                  style: TextStyle(
                                    fontWeight: .bold,
                                    fontSize: 15,
                                    color: CustomColor.cinza,
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: .end,
                                  children: [
                                    Icon(
                                      Icons.monetization_on,
                                      color: CustomColor.redMalta,
                                      size: 35,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),

                        GestureDetector(
                          child: Container(
                            padding: .all(8),
                            decoration: BoxDecoration(
                              color: CustomColor.branco,
                              borderRadius: .all(.circular(8)),
                            ),
                            child: Column(
                              mainAxisAlignment: .spaceBetween,
                              crossAxisAlignment: .start,
                              children: [
                                Text(
                                  'Relatórios',
                                  maxLines: 2,
                                  overflow: .ellipsis,
                                  style: TextStyle(
                                    fontWeight: .bold,
                                    fontSize: 15,
                                    color: CustomColor.cinza,
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: .end,
                                  children: [
                                    Icon(
                                      Icons.edit_document,
                                      color: CustomColor.redMalta,
                                      size: 35,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),

                        GestureDetector(
                          child: Container(
                            padding: .all(8),
                            decoration: BoxDecoration(
                              color: CustomColor.branco,
                              borderRadius: .all(.circular(8)),
                            ),
                            child: Column(
                              mainAxisAlignment: .spaceBetween,
                              crossAxisAlignment: .start,
                              children: [
                                Text(
                                  'Ouvidoria',
                                  maxLines: 2,
                                  overflow: .ellipsis,
                                  style: TextStyle(
                                    fontWeight: .bold,
                                    fontSize: 15,
                                    color: CustomColor.cinza,
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: .end,
                                  children: [
                                    Icon(
                                      Icons.headset_mic_outlined,
                                      color: CustomColor.redMalta,
                                      size: 35,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),

                        GestureDetector(
                          child: Container(
                            padding: .all(8),
                            decoration: BoxDecoration(
                              color: CustomColor.branco,
                              borderRadius: .all(.circular(8)),
                            ),
                            child: Column(
                              mainAxisAlignment: .spaceBetween,
                              crossAxisAlignment: .start,
                              children: [
                                Text(
                                  'Central do aluno',
                                  maxLines: 2,
                                  overflow: .ellipsis,
                                  style: TextStyle(
                                    fontWeight: .bold,
                                    fontSize: 15,
                                    color: CustomColor.cinza,
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: .end,
                                  children: [
                                    Icon(
                                      Icons.school,
                                      color: CustomColor.redMalta,
                                      size: 35,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),

                        GestureDetector(
                          child: Container(
                            padding: .all(8),
                            decoration: BoxDecoration(
                              color: CustomColor.branco,
                              borderRadius: .all(.circular(8)),
                            ),
                            child: Column(
                              mainAxisAlignment: .spaceBetween,
                              crossAxisAlignment: .start,
                              children: [
                                Text(
                                  'Carreiras',
                                  maxLines: 2,
                                  overflow: .ellipsis,
                                  style: TextStyle(
                                    fontWeight: .bold,
                                    fontSize: 15,
                                    color: CustomColor.cinza,
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: .end,
                                  children: [
                                    Icon(
                                      Icons.work_outline_rounded,
                                      color: CustomColor.redMalta,
                                      size: 35,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),

                        GestureDetector(
                          child: Container(
                            padding: .all(8),
                            decoration: BoxDecoration(
                              color: CustomColor.branco,
                              borderRadius: .all(.circular(8)),
                            ),
                            child: Column(
                              mainAxisAlignment: .spaceBetween,
                              crossAxisAlignment: .start,
                              children: [
                                Text(
                                  'Malta UP',
                                  maxLines: 2,
                                  overflow: .ellipsis,
                                  style: TextStyle(
                                    fontWeight: .bold,
                                    fontSize: 15,
                                    color: CustomColor.cinza,
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: .end,
                                  children: [
                                    Icon(
                                      Icons.link,
                                      color: CustomColor.redMalta,
                                      size: 35,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),


                Padding(
                  padding: .symmetric(horizontal: 15),
                  child: GestureDetector(
                    onTap: () {
                      return expandir();
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: CustomColor.branco,
                        borderRadius: .all(.circular(6)),
                        border: Border.all(
                          color: CustomColor.redMalta,
                          width: 1.5,
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: .center,
                        children: [
                          Icon(
                            iSexpanded
                                ? Icons.arrow_drop_up_sharp
                                : Icons.arrow_drop_down_sharp,
                            size: 30,
                            color: CustomColor.redMalta,
                          ),
                          Text(
                            iSexpanded ? 'Recolher' : 'Expandir',
                            style: TextStyle(
                              color: CustomColor.redMalta,
                              fontWeight: .bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: .symmetric(horizontal: 10),
                  child: SizedBox(
                    height: 350,
                    child: PageView(
                      controller: bannerController,
                      scrollDirection: .horizontal,
                      children: [
                        
                        Padding(
                          padding: .symmetric(horizontal: 8),
                          child: GestureDetector(
                            child: Image.network(
                              'https://faculdademalta.edu.br/static/assets/media/img/banner_editais_mobile.jpeg',
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),

                        Padding(
                          padding: .symmetric(horizontal: 8),
                          child: GestureDetector(
                            child: Image.network(
                              'https://faculdademalta.edu.br/static/assets/media/img/banners/direitomobile.png',
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),

                        Padding(
                          padding: .symmetric(horizontal: 8),
                          child: GestureDetector(
                            child: Image.network(
                              'https://faculdademalta.edu.br/static/assets/media/img/banners/ssocialmobile.png',
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                Padding(
                  padding: .symmetric(horizontal: 15),
                  child: Container(
                    padding: .all(10),
                    decoration: BoxDecoration(
                      borderRadius: .all(.circular(8)),
                      color: CustomColor.branco,
                      border: Border.all(color: CustomColor.redMalta, width: 2),
                    ),
                    child: Column(
                      spacing: 10,
                      crossAxisAlignment: .start,
                      children: [
                        Text('Avalie o nosso App!', style: TextStyle(color: CustomColor.redMalta, fontSize: 18, fontWeight: .bold),),
                        Text('Ajude-nos a melhorar a sua experiência com nossos serviços digitais!', style: TextStyle(color: CustomColor.redMalta, fontSize: 15, fontWeight: .bold),),

                        GestureDetector(
                          child: Container(
                            padding: .all(8),
                            decoration: BoxDecoration(
                              color: CustomColor.redMalta,
                              borderRadius: .all(.circular(6)),
                            ),
                            child: Row(
                              mainAxisAlignment: .center,
                              children: [
                                Text(
                                  'Avaliar agora!',
                                  style: TextStyle(
                                    color: CustomColor.branco,
                                    fontWeight: .bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                SizedBox(height: 40,)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
