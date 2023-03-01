import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import '../components/bottomBar.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import '../components/loginBtn.dart';

class MyAccount extends StatelessWidget {
  const MyAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('')),
      backgroundColor: Colors.white,
      body:  Center(
        child: Container(
          height: 470,
          width: 340,
          decoration: BoxDecoration(
            color: Color(0xffF3F3F3),
            borderRadius: BorderRadius.circular(5),
            boxShadow: [
              BoxShadow(
                color: Color.fromARGB(0, 233, 76, 14),
                offset: Offset(4.0, 4.0),
                blurRadius: 15.0,
                spreadRadius: 1.0
              )
            ],
          ),
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Row(
              children: <Widget> [
                 Image.network(
                      'data:image/png;base64,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'
                   ),
                Text(
                  'Bruna Brecailo',
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.bold
                  ),
                  ),
                Spacer(flex: 1,)
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text("Setor: Service Desk ")
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text("E-mail: bruna.brecailo@malwee.com.br")
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Icon(
                  Icons.logout,
                  color: Colors.black,
                  size: 24.0,
                ),
                Text("Sair")
              ],
            ),
          ),
        ],
      ),
     )
    ),
    bottomNavigationBar: const GNav(
        backgroundColor: Color(0xff5680D3),
        color: Colors.white,
        activeColor: Colors.white,
        gap: 8,
        tabs: [
          GButton(
            icon: Icons.unarchive,
            text: 'Estoque',
          ),
          GButton(icon: Icons.real_estate_agent, text: 'Empréstimos'),
          GButton(
            icon: Icons.groups,
            text: 'Usuários',
          ),
          GButton(
            icon: Icons.person,
            text: 'Minha conta',
          )
        ],
      ),
   );
  }
}