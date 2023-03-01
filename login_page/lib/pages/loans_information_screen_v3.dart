import 'package:flutter/material.dart';

class LoansScreenThree extends StatelessWidget {
  const LoansScreenThree({super.key});

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
            title: const Text('Empréstimo n° 0534'),
            centerTitle: true),
        body: Column(children: [
          Container(
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(10)),
          ),
          const Text(
            'Fone JBL',
            style: TextStyle(
              fontSize: 30,
            ),
          ),
          Container(
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 230, 231, 231),
                borderRadius: BorderRadius.circular(5)),
            margin: const EdgeInsets.only(left: 10, right: 10, top: 20),
            width: double.infinity,
            height: 210,
            child: const Text(
              '  Chamado Não Efetuado \n'
              '  Patrimônio: FNE123JBL \n'
              '\n'
              '  Emprestado por: JA34160 \n'
              '  Centro de Custo: Service Desk \n'
              '\n'
              '  Data de Saída: 16/02/2005 \n'
              '  Data de Devolução: 05/06/2023',
              style:
                  TextStyle(fontSize: 20, color: Color.fromARGB(131, 0, 0, 0)),
            ),
          ),
          const Expanded(child: SizedBox()),
          Container(
              decoration: BoxDecoration(
                  border: Border.all(color: const Color(0xffD35656), width: 2),
                  borderRadius: BorderRadius.circular(20)),
              height: 50,
              width: double.infinity,
              margin: const EdgeInsets.only(
                left: 10,
                right: 10,
              ),
              child: ElevatedButton.icon(
                  onPressed: () {
                    // do something
                  },
                  icon: const Icon(Icons.refresh),
                  label: const Text('Devolver Item'),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        const Color.fromARGB(255, 230, 231, 231)),
                    foregroundColor: MaterialStateProperty.all<Color>(
                        const Color(0xffD35656)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                      ),
                    ),
                  ))),
          const SizedBox(
            height: 70,
          ),
        ]),
      ),
    );
  }
}
