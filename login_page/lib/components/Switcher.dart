import 'package:flutter/material.dart';

import '../pages/loans_screen.dart';
import '../pages/stock.dart';
import '../pages/user_information_screen.dart';
import '../pages/users_screen.dart';

class Teste extends StatefulWidget {
  const Teste({super.key});

  @override
  State<Teste> createState() => LoansScreenOne();
}

class LoansScreenOne extends State<Teste> {
  // ignore: non_constant_identifier_names
  int SelectedPage = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        currentIndex: SelectedPage,
        backgroundColor: Colors.blue,
        onTap: (option) {
          print('clicou $option');

          setState(() {
            SelectedPage = option;
          });
        },
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.unarchive), label: 'Estoque'),
          BottomNavigationBarItem(
              icon: Icon(Icons.real_estate_agent), label: 'Empréstimos'),
          BottomNavigationBarItem(icon: Icon(Icons.groups), label: 'Usuários'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person), label: 'Minha Conta'),
        ],
      ),
      body: IndexedStack(
        index: SelectedPage,
        children: const <Widget>[
          Estoque(),
          LoansScreen(),
          UserScreen(),
          User_Information(),
        ],
      ),
    ));
  }
}
