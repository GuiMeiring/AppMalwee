import 'package:flutter/material.dart';

import '../components/my_text_field.dart';

class FormularioEmprestimoPage extends StatefulWidget {
  const FormularioEmprestimoPage({super.key});

  @override
  State<FormularioEmprestimoPage> createState() =>
      _FormularioEmprestimoPageState();
}

class _FormularioEmprestimoPageState extends State<FormularioEmprestimoPage> {
  //variável para o nome do item a emprestar
  final nomeItemController = TextEditingController();
  //variável para a matrícula do funcionário que receberá o empréstaimo
  final matriculaController = TextEditingController();
  //variável para o patrimônio do item
  final patrimonioItemController = TextEditingController();
  //variável para o setor do empréstimo
  final setorController = TextEditingController();
  //variável para o Centro de Custos do empréstimo
  final centroDeCustosEmprestimoController = TextEditingController();
  //variável para o chamado
  bool chamado = true;
  //variável para a data de entrada
  DateTime dateTime = DateTime.now();

  //Função do DatePicker
  void _showDatePicker() {
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime(3000),
    ).then((value) {
      setState(() {
        dateTime = value!;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Emprestar item'),
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back),
          ),
        ),
        body: Column(children: [
          const SizedBox(height: 15),
          //componente para o  nome do item
          MyTextField(
            controller: nomeItemController,
            hintText: "Ex: Mouse: *",
            obscureText: false,
            text: "Nome",
            keyBoardType: TextInputType.text,
            icon: const Icon(Icons.edit),
          ),
          const SizedBox(height: 15),
          //componente para a matricula do funcionario
          MyTextField(
            controller: matriculaController,
            hintText: "Ex: JA3201",
            obscureText: false,
            text: "Matrícula: *",
            keyBoardType: TextInputType.text,
            icon: const Icon(Icons.pin_outlined),
          ),
          const SizedBox(height: 15),
          //componente para o patrimônio do item
          MyTextField(
            controller: patrimonioItemController,
            hintText: "Ex: 1123",
            obscureText: false,
            text: "Patrimônio: *",
            keyBoardType: TextInputType.number,
            icon: const Icon(Icons.pin_outlined),
          ),
          const SizedBox(height: 15),
          //componente para o setor do empréstimo
          MyTextField(
            controller: setorController,
            hintText: "Ex: Compras",
            obscureText: false,
            text: "Setor: *",
            keyBoardType: TextInputType.text,
            icon: const Icon(Icons.work_outline),
          ),
          const SizedBox(height: 15),
          //componente para o centro de custo do empréstimo
          MyTextField(
            controller: centroDeCustosEmprestimoController,
            hintText: "Ex: Service Desk",
            obscureText: false,
            text: "Centro de custos: *",
            keyBoardType: TextInputType.text,
            icon: const Icon(Icons.edit),
          ),
          const SizedBox(height: 15),
          const Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: 25.0,
              ),
              Text(
                "Data de entrada: *",
                style: TextStyle(color: Colors.blue),
              ),
            ],
          ),
          Container(
            width: double.infinity,
            height: 50,
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            //ElevatedButton para o date picker
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                    const Color.fromARGB(255, 230, 231, 231)),
                foregroundColor: MaterialStateProperty.all<Color>(
                    const Color.fromARGB(255, 52, 134, 221)),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                      side: const BorderSide(
                          color: Color.fromARGB(255, 52, 134, 221))),
                ),
              ),
              onPressed: _showDatePicker,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('${dateTime.day}/${dateTime.month}/${dateTime.year}'),
                  const Icon(Icons.date_range),
                ],
              ),
            ),
          ),
          const SizedBox(height: 15),
          Container(
            width: double.infinity,
            height: 50,
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            //ElevatedButton para o switch
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                    const Color.fromARGB(255, 230, 231, 231)),
                foregroundColor: MaterialStateProperty.all<Color>(
                    const Color.fromARGB(255, 52, 134, 221)),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                      side: const BorderSide(
                          color: Color.fromARGB(255, 52, 134, 221))),
                ),
              ),
              onPressed: () async {},
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text("Chamado"),
                    Switch(
                      // This bool value toggles the switch.
                      value: chamado,
                      activeColor: Colors.blue,
                      onChanged: (bool value) {
                        // This is called when the user toggles the switch.
                        setState(() {
                          chamado = value;
                        });
                      },
                    ),
                  ]),
            ),
          ),
          const Expanded(
            child: SizedBox(),
          ),
          Container(
            width: double.infinity,
            height: 50,
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            //ElevatedButton Adicionar
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                    const Color.fromARGB(255, 52, 134, 221)),
                foregroundColor: MaterialStateProperty.all<Color>(
                    const Color.fromARGB(255, 230, 231, 231)),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ),
              onPressed: () async {
                Navigator.pop(context);
              },
              child: const Text('Adicionar'),
            ),
          ),
          const SizedBox(height: 20),
        ]),
      ),
    );
  }
}
