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
          children: [
            Container(
              clipBehavior: .antiAlias,
              decoration: BoxDecoration(
                borderRadius: .only(bottomRight: .circular(100)),
              ),
              child: Image.asset('assets/images/tela-login-image.png'),
            ),

            Padding(
              padding: .symmetric(horizontal: 22, vertical: 25),
              child: Column(
                children: [
                  Image.asset('assets/images/logo-vermelha.png', scale: 50),

                  Column(
                    spacing: 20,
                    children: [
                      
                      
                      TextField(
                        decoration: InputDecoration(
                          label: Text(
                            'Usuário',
                            style: TextStyle(
                              color: CustomColor.cinza,
                              fontSize: 16,
                              fontWeight: .bold,
                            ),
                          ),
                          
                          focusColor: CustomColor.cinza,

                          hintText: 'Digite seu RA ou usuário',
                          hintStyle: TextStyle(
                            color: const Color.fromARGB(112, 0, 0, 0),
                            fontWeight: .bold,
                          ),
                        ),
                      ),

                      Row(
                        crossAxisAlignment: .end,
                        children: [
                          Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                label: Text(
                                  'Senha',
                                  style: TextStyle(
                                    color: CustomColor.cinza,
                                    fontSize: 16,
                                    fontWeight: .bold,
                                  ),
                                ),
                                hintText: 'Digite sua senha',
                                hintStyle: TextStyle(
                                  color: const Color.fromARGB(112, 0, 0, 0),
                                  fontWeight: .bold,
                                ),
                              ),
                            ),
                          ),

                          GestureDetector(
                            child: Container(
                              padding: .all(5),
                              decoration: BoxDecoration(
                                color: CustomColor.background,
                                borderRadius: .all(.circular(5)),
                              ),

                              child: Icon(
                                Icons.visibility,
                                color: CustomColor.cinza,
                              ),
                            ),
                          ),
                        ],
                      ),

                      Row(
                        mainAxisAlignment: .end,
                        children: [
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              'Esqueci minha senha',
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
                        spacing: 8,
                        children: [
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: CustomColor.redMalta,
                              overlayColor: CustomColor.branco,
                              padding: .all(12),

                              shape: RoundedRectangleBorder(
                                borderRadius: .all(.circular(8)),
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
                                    fontSize: 17,
                                  ),
                                ),
                                Icon(
                                  Icons.login,
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
                              padding: .all(12),
                              shape: RoundedRectangleBorder(
                                borderRadius: .all(.circular(8)),
                                side: BorderSide(
                                  color: CustomColor.redMalta,
                                  width: 2,
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
                                    fontSize: 17,
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
