import 'package:faculdade_malta_app/styles/colors.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.branco,
      body: SingleChildScrollView(
        child: Column(
          spacing: 10,
          children: [
            Container(
              padding: .all(20),
              height: MediaQuery.of(context).size.height * 0.50,
              width: 10 * 100,
              clipBehavior: .antiAlias,
              decoration: BoxDecoration(
                borderRadius: .only(bottomRight: .circular(70)),
                image: DecorationImage(
                  image: AssetImage('assets/images/tela-login-image.png'),
                  fit: .cover,
                ),
              ),
              child: Stack(
                alignment: AlignmentGeometry.bottomLeft,
                children: [
                  Image.network('https://faculdademalta.edu.br/static/assets/media/img/logo-malta-branco.png', scale: 30,)
                ],
              ),
            ),

            Padding(
              padding: .all(15),
              child: Column(
                children: [
                  Column(
                    spacing: 10,
                    crossAxisAlignment: .start,
                    children: [
                      // Text(
                      //   'Que bom te ter de volta!',
                      //   style: TextStyle(
                      //     color: CustomColor.redMalta,
                      //     fontSize: 18,
                      //     fontWeight: .bold,
                      //   ),
                      // ),

                      TextField(
                        decoration: InputDecoration(
                          label: Row(
                            mainAxisSize: .min,
                            children: [
                              Icon(
                                Icons.person,
                                size: 15,
                                color: CustomColor.cinza50,
                              ),
                              Text(
                                'Usuário',
                                style: TextStyle(
                                  color: CustomColor.cinza50,
                                  fontWeight: .bold,
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),

                          contentPadding: .all(15),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: .circular(10),
                            borderSide: BorderSide(
                              color: CustomColor.gainsboro,
                              width: 1.5,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: .circular(10),
                            borderSide: BorderSide(
                              color: CustomColor.redMalta,
                              width: 1.5,
                            ),
                          ),
                          hintText: 'Digite seu RA ou usuário',
                          hintStyle: TextStyle(
                            color: const Color.fromARGB(112, 0, 0, 0),
                            fontWeight: .bold,
                          ),
                        ),
                      ),

                      TextField(
                        decoration: InputDecoration(
                          label: Row(
                            mainAxisSize: .min,
                            children: [
                              Icon(
                                Icons.lock_open,
                                size: 15,
                                color: CustomColor.cinza50,
                              ),
                              Text(
                                'Senha',
                                style: TextStyle(
                                  color: CustomColor.cinza50,
                                  fontWeight: .bold,
                                ),
                              ),
                            ],
                          ),

                          contentPadding: .all(15),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: .circular(10),
                            borderSide: BorderSide(
                              color: CustomColor.gainsboro,
                              width: 1.5,
                            ),
                          ),

                          focusedBorder: OutlineInputBorder(
                            borderRadius: .circular(10),
                            borderSide: BorderSide(
                              color: CustomColor.redMalta,
                              width: 1.5,
                            ),
                          ),

                          focusColor: CustomColor.cinza,

                          hintText: 'Digite sua senha',
                          hintStyle: TextStyle(
                            color: const Color.fromARGB(112, 0, 0, 0),
                            fontWeight: .bold,
                          ),
                        ),
                      ),

                      Row(
                        mainAxisAlignment: .end,
                        children: [
                          GestureDetector(
                            onTap: () {},
                            child: Text(
                              'Recuperar senha',
                              style: TextStyle(
                                color: CustomColor.redMalta,
                                fontSize: 15,
                                fontWeight: .bold,
                              ),
                            ),
                          ),
                        ],
                      ),

                      Column(
                        spacing: 15,
                        children: [
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: CustomColor.redMalta,
                              overlayColor: CustomColor.branco,
                              padding: .all(10),

                              shape: RoundedRectangleBorder(
                                borderRadius: .all(.circular(5)),
                              ),
                            ),

                            onPressed: () {
                              Navigator.pushReplacementNamed(
                                context,
                                'homepage',
                              );
                            },
                            child: Row(
                              spacing: 3,
                              mainAxisAlignment: .center,
                              children: [
                                Text(
                                  'Entrar',
                                  style: TextStyle(
                                    color: CustomColor.branco,
                                    fontWeight: .bold,
                                    fontSize: 16,
                                  ),
                                ),
                                Icon(
                                  Icons.login_sharp,
                                  size: 20,
                                  color: CustomColor.branco,
                                ),
                              ],
                            ),
                          ),

                          Row(
                            children: [
                              Expanded(
                                child: Container(
                                  height: 1,
                                  color: const Color.fromARGB(77, 0, 0, 0),
                                ),
                              ),

                              Padding(
                                padding: .symmetric(horizontal: 10),
                                child: Text(
                                  'Ou',
                                  style: TextStyle(
                                    color: CustomColor.cinza,
                                    fontSize: 16,
                                    fontWeight: .bold,
                                  ),
                                ),
                              ),

                              Expanded(
                                child: Container(
                                  height: 1,
                                  color: const Color.fromARGB(77, 0, 0, 0),
                                ),
                              ),
                            ],
                          ),

                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: CustomColor.branco,
                              overlayColor: CustomColor.redMalta,
                              padding: .all(10),
                              shape: RoundedRectangleBorder(
                                borderRadius: .all(.circular(5)),
                                side: BorderSide(
                                  color: CustomColor.redMalta,
                                  width: 1.5,
                                ),
                              ),
                            ),

                            onPressed: () {},
                            child: Row(
                              spacing: 3,
                              mainAxisAlignment: .center,
                              children: [
                                Text(
                                  'Entrar com o Google',
                                  style: TextStyle(
                                    color: CustomColor.redMalta,
                                    fontWeight: .bold,
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
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
