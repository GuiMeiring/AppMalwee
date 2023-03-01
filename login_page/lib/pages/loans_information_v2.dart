import 'package:flutter/material.dart';

class LoansScreenTwo extends StatelessWidget {
  const LoansScreenTwo({super.key});

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
            title: const Text('Empréstimo n° 1552'),
            centerTitle: true),
        body: Column(children: [
          Container(
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(10)),
            child: Image.network(
              'https://www.logitechstore.com.br/media/catalog/product/cache/1/image/634x545/9df78eab33525d08d6e5fb8d27136e95/p/r/pro-wireless.png',
              width: double.infinity,
              height: 250,
            ),
          ),
          const Text(
            'Mouse Logitech',
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
              '  Patrimônio: MSE123LGTH \n'
              '\n'
              '  Emprestado por: JA3210 \n'
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
                    backgroundColor:
                        MaterialStateProperty.all<Color>(  const Color.fromARGB(255, 230, 231, 231)),
                    foregroundColor:
                        MaterialStateProperty.all<Color>(const Color(0xffD35656)),
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
