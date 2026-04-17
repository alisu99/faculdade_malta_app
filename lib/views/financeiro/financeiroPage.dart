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
        child: Column(
          children: [
            Padding(
              padding: .all(10),
              child: Column(
                spacing: 10,
                children: [
                  Card(child: Text('Pagina de informações financeiras'),),
                  
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
