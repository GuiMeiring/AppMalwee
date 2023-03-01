import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:login_page/pages/login_page.dart';

class User_Information extends StatelessWidget {
  const User_Information({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.blue,
            leading: IconButton(
              iconSize: 40,
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back),
            ),
            title: const Text(''),
            centerTitle: true),
        body: Column(children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 600,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 230, 231, 231),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: const Offset(0, 3), // changes position of shadow
                    )
                  ],
                  borderRadius: BorderRadius.circular(15)),
              margin: const EdgeInsets.only(top: 10, left: 10, right: 10),
              child: Padding(
                padding: const EdgeInsets.only(top: 70),
                child: Column(
                  children: [
                    Image.network(
                      'https://cdn-icons-png.flaticon.com/512/74/74472.png',
                      height: 200,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            'Bruna Brecailo \n \n ',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 30),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 30),
                      child: Row(
                        children: const [
                          Text('Setor: Service Desk \n'
                              'E-mail: bruna.brecailo@malwee.com.br'),
                        ],
                      ),
                    ),
                    Container(
                        height: 50,
                        width: 100,
                        margin: const EdgeInsets.only(
                            left: 280, right: 10, top: 90),
                        child: ElevatedButton.icon(
                            onPressed: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return LoginPage();
                              }));
                              // do something
                            },
                            icon: const Icon(Icons.exit_to_app),
                            label: const Text('Sair'),
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  const Color.fromARGB(255, 230, 231, 231)),
                              foregroundColor: MaterialStateProperty.all<Color>(
                                  const Color.fromARGB(255, 0, 0, 0)),
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18.0),
                                ),
                              ),
                            ))),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 70,
          ),
        ]),
      ),
    );
  }
}
