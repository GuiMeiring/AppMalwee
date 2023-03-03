// ignore_for_file: file_names, unnecessary_import, implementation_imports, unused_import, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: ('Estoque'),
            backgroundColor: Color(0xff5680D3),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.real_estate_agent),
            label: ('Empréstimos'),
            backgroundColor: Color(0xff5680D3),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.groups),
            label: ('Usuários'),
            backgroundColor: Color(0xff5680D3),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: ('Minha Conta'),
            backgroundColor: Color(0xff5680D3),
          ),
        ]
      ),
    );
  }
}