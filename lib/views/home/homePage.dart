import 'package:faculdade_malta_app/styles/colors.dart';
import 'package:faculdade_malta_app/views/perfil/perfilPage.dart';
import 'package:faculdade_malta_app/views/relatorios/relatorios.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = PageController(initialPage: 0);
  final disciplinasController = PageController(initialPage: 0);
  final bannerController = PageController(initialPage: 0);

  bool iSexpanded = false;

  void expandir() {
    setState(() {
      iSexpanded = iSexpanded ? false : true;
    });
  }

  @override
  void dispose() {
    controller.dispose();
    bannerController.dispose();
    super.dispose();
  }

  Widget itemWidget(String title, IconData icon, ) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, CupertinoPageRoute(builder: (context) => RelatorioPage(),));
      },
      child: Container(
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: CustomColor.branco,
          borderRadius: BorderRadius.circular(7),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                color: CustomColor.cinza,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [Icon(icon, color: CustomColor.redMalta, size: 35)],
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> items = [
      itemWidget('Calendário acadêmico', Icons.calendar_month_outlined),
      itemWidget('Grade curricular', Icons.grid_view),
      itemWidget('Secretaria', Icons.menu_book_rounded),
      itemWidget('Financeiro', Icons.monetization_on),
      itemWidget('Relatórios', Icons.edit_document),
      itemWidget('Ouvidoria', Icons.headset_mic_outlined),
      itemWidget('Central do aluno', Icons.school),
      itemWidget('Carreiras', Icons.work_outline_rounded),
      itemWidget('Malta UP', Icons.link),
    ];

    return Scaffold(
      // botei uma appbar aqui com o tamanho zerado, só pra colorir a parte de cima (barra de notificação)
      appBar: AppBar(toolbarHeight: 0),

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
                                'Pedagogia EAD',
                                style: TextStyle(
                                  color: CustomColor.branco50,
                                  fontSize: 14,
                                  fontWeight: .bold,
                                ),
                              ),
                            ],
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(context, CupertinoPageRoute(builder: (context) => PerfilPage()));
                            },
                            child: CircleAvatar(
                              backgroundColor: CustomColor.branco,
                              child: Text(
                                'AS',
                                style: TextStyle(fontWeight: .w600, fontSize: 20),
                              ),
                            ),
                          ),
                        ],
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
                                  borderRadius: .circular(7),
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
                                                fontSize: 16,
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
                                  borderRadius: .circular(7),
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
                                              'ENEM 2025',
                                              style: TextStyle(
                                                fontWeight: .bold,
                                                fontSize: 16,
                                                color: CustomColor.cinza,
                                              ),
                                            ),
                                            Text(
                                              'Faça sua inscrição usando a nota do ENEM 2025!',
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
                                  borderRadius: .circular(7),
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
                                              'IRPF 2026',
                                              style: TextStyle(
                                                fontWeight: .bold,
                                                fontSize: 16,
                                                color: CustomColor.cinza,
                                              ),
                                            ),
                                            Text(
                                              'Declaração de imposto de renda de pessoas físicas para o ano de 2026',
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
                          fontSize: 14,
                          color: CustomColor.cinza,
                          fontWeight: .w600,
                        ),
                      ),

                      SizedBox(
                        height: 70,
                        child: PageView(
                          controller: disciplinasController,
                          allowImplicitScrolling: true,
                          children: [
                            GestureDetector(
                              onTap: () {},
                              child: Container(
                                margin: .symmetric(horizontal: 3),
                                decoration: BoxDecoration(
                                  color: CustomColor.branco,
                                  borderRadius: .circular(7),
                                ),
                                child: Padding(
                                  padding: .symmetric(horizontal: 25),

                                  child: Column(
                                    mainAxisAlignment: .center,
                                    crossAxisAlignment: .start,
                                    children: [
                                      Text(
                                        'INTRODUÇÃO A PEDAGOGIA',
                                        style: TextStyle(
                                          overflow: .ellipsis,
                                          fontWeight: .bold,
                                          fontSize: 16,
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

                            GestureDetector(
                              onTap: () {},
                              child: Container(
                                margin: .symmetric(horizontal: 3),
                                decoration: BoxDecoration(
                                  color: CustomColor.branco,
                                  borderRadius: .circular(7),
                                ),
                                child: Padding(
                                  padding: .symmetric(horizontal: 25),

                                  child: Column(
                                    mainAxisAlignment: .center,
                                    crossAxisAlignment: .start,
                                    children: [
                                      Text(
                                        'CIÊNCIAS SOCIAIS',
                                        style: TextStyle(
                                          overflow: .ellipsis,
                                          fontWeight: .bold,
                                          fontSize: 16,
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
                          ],
                        ),
                      ),
                    ],
                  ),
                ),


                // atalhos
                Padding(
                  padding: .symmetric(horizontal: 15),
                  child: GridView.count(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    crossAxisCount: 3,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    children: iSexpanded ? items : items.take(3).toList(),
                  ),
                ),

                Padding(
                  padding: .symmetric(horizontal: 15),
                  child: GestureDetector(
                    onTap: () {
                      return expandir();
                    },
                    child: Container(
                      padding: .all(3),
                      decoration: BoxDecoration(
                        color: CustomColor.branco,
                        borderRadius: .all(.circular(7)),
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
                              fontSize: 14,
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
                    height: 380,
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
                    padding: .all(20),
                    decoration: BoxDecoration(
                      borderRadius: .all(.circular(7)),
                      color: CustomColor.branco,
                      border: Border.all(color: CustomColor.redMalta, width: 2),
                    ),
                    child: Column(
                      spacing: 10,
                      crossAxisAlignment: .start,
                      children: [
                        Text(
                          'Avalie o nosso App!',
                          style: TextStyle(
                            color: CustomColor.redMalta,
                            fontSize: 20,
                            fontWeight: .bold,
                          ),
                        ),
                        Text(
                          'Ajude-nos a melhorar a sua experiência com nossos serviços digitais!',
                          style: TextStyle(
                            color: CustomColor.redMalta,
                            fontSize: 16,
                            fontWeight: .bold,
                          ),
                        ),

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
                                    fontSize: 16,
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

                SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
