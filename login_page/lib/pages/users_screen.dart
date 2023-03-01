import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:login_page/pages/formulario_user.dart';

class UserScreen extends StatefulWidget {
  const UserScreen({super.key});

  @override
  State<UserScreen> createState() => LoansScreenOne();
}

class LoansScreenOne extends State<UserScreen> {
  String serch = '';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(211, 88, 160, 255),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          iconSize: 30,
          icon: const Icon(Icons.arrow_back),
        ),
        title: Container(
          margin: const EdgeInsets.only(right: 30, top: 5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
          ),
          width: double.infinity,
          height: 40,
          child: const TextField(
            decoration: InputDecoration(
              hintText: 'Busque por um Usuário',
              icon: Icon(Icons.search),
            ),
            textAlign: TextAlign.center,
            // onChanged: (text) {
            //   serch = text;
            // },
          ),
        ),
      ),
      body: ListView(
        children: [
          const SizedBox(height: 10),
          const SizedBox(height: 20),
          InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return FormularioUser();
              }));
            },
            child: Container(
              margin: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
              child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: const MaterialStatePropertyAll(
                        Color.fromARGB(255, 125, 196, 253)),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16.00),
                      ),
                    ),
                    minimumSize: MaterialStateProperty.all(
                        const Size(double.infinity, 65))),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return FormularioUser();
                  }));
                },
                child: const Text(
                  '+  Adicionar um novo Usuário',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
          ),
          Container(
            height: 100,
            margin: const EdgeInsets.only(left: 10, right: 10, top: 10),
            decoration: BoxDecoration(
                color: const Color(0xffF3F3F3),
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    offset: const Offset(0, 3), // Shifts the shadow downwards
                    blurRadius: 0, // Prevents shadow from being blurred
                    spreadRadius: 0, // Prevents shadow from being spread
                  ),
                ]),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Image.network(
                    'https://www.pngmart.com/files/10/User-Account-Person-PNG-File.png',
                    height: 100,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text('Eduardo Machado',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        Text('Matrícula: JA3412'),
                        Text('E-mail: edu.machado@malwee.com.br'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 100,
            margin: const EdgeInsets.only(left: 10, right: 10, top: 10),
            decoration: BoxDecoration(
                color: const Color(0xffF3F3F3),
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    offset: const Offset(0, 3), // Shifts the shadow downwards
                    blurRadius: 0, // Prevents shadow from being blurred
                    spreadRadius: 0, // Prevents shadow from being spread
                  ),
                ]),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Image.network(
                    'https://www.pngmart.com/files/10/User-Account-Person-PNG-File.png',
                    height: 100,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text('Eduardo Andrei',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        Text('Matrícula: JA34967'),
                        Text('E-mail: edu.andrei@malwee.com.br'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
