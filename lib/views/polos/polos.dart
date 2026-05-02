import 'package:flutter/material.dart';
import 'package:faculdade_malta_app/styles/colors.dart';

class PolosPage extends StatelessWidget {
  const PolosPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Polos'),
        shape: RoundedRectangleBorder(
          borderRadius: .only(
            bottomLeft: .circular(10),
            bottomRight: .circular(10),
          ),
        ),
      ),

      body: Padding(
        padding: .all(10),

        child: Column(
          crossAxisAlignment: .start,
          children: [
            Text(
              'Lista de polos',
              style: TextStyle(
                color: CustomColor.cinza,
                fontSize: 14,
                fontWeight: .bold,
              ),
            ),

            TextField(
              decoration: InputDecoration(
                contentPadding: .all(12),
                filled: true,
                fillColor: CustomColor.branco,
                enabledBorder: OutlineInputBorder(
                  borderRadius: .circular(10),
                  borderSide: BorderSide.none,
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: .circular(10),
                  borderSide: BorderSide.none,
                ),
                hintText: 'Pesquisar por um polo...',
                hintStyle: TextStyle(
                  color: const Color.fromARGB(112, 0, 0, 0),
                  fontWeight: .bold,
                ),
              ),
            ),

            SizedBox(height: 10),

            Expanded(
              child: ListView.builder(
                itemCount: 6,

                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {},

                    child: Container(
                      padding: .all(8),
                      margin: .only(top: 2, bottom: 2),
                      decoration: BoxDecoration(
                        color: CustomColor.branco,
                        borderRadius: .all(.circular(7)),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 1,
                            color: const Color.fromARGB(48, 0, 0, 0),
                            // spreadRadius: 1,
                            offset: Offset(0, 0.8),
                          ),
                        ],
                      ),

                      child: Row(
                        crossAxisAlignment: .start,
                        spacing: 10,
                        children: [
                          Container(
                            height: 90,
                            width: 90,

                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                  'assets/images/polo-barao.jpg',
                                ),
                                scale: 20,
                                fit: .cover,
                              ),
                              borderRadius: .circular(f7),
                            ),
                          ),

                          Expanded(
                            child: Column(
                              mainAxisAlignment: .start,
                              crossAxisAlignment: .start,
                              children: [
                                Text(
                                  'Faculdade Malta Barão',
                                  style: TextStyle(
                                    color: CustomColor.redMalta,
                                    fontSize: 16,
                                    fontWeight: .bold,
                                  ),
                                  maxLines: 2,
                                  overflow: .ellipsis,
                                ),
                                Text(
                                  'Avenida Barão de Gurguéia, 3333B, Vermelha, Teresina - PI, 64018-500.',
                                  style: TextStyle(
                                    color: CustomColor.cinza,
                                    fontSize: 15,
                                    fontWeight: .bold
                                  ),
                                  maxLines: 3,
                                  overflow: .ellipsis,
                                ),
                              ],
                            ),
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
    );
  }
}
