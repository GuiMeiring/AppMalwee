import 'package:flutter/material.dart';

import '../components/my_text_field.dart';

class FormularioUser extends StatelessWidget {
  FormularioUser({super.key});

  final dropValue = ValueNotifier('');
  //list Dropdown
  final itens = ['ServiceDesk', 'Administrador'];
  //variável para o nome do usuário
  final nomeUserController = TextEditingController();
  //variável para a matricula do usuário
  final matriculaUserController = TextEditingController();
  //variável para o email do usuário
  final emailUserController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: const Text('Adicionar usuário'),
            leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back),
            ),
          ),
          body: Column(
            children: [
              const SizedBox(height: 20),
              //componenete para o  nome do usuário
              MyTextField(
                controller: nomeUserController,
                hintText: "Ex: Lucas",
                obscureText: false,
                text: "Nome",
                keyBoardType: TextInputType.text,
                icon: const Icon(Icons.person),
              ),
              const SizedBox(height: 20),
              //componente para a matricula do usuário
              MyTextField(
                controller: matriculaUserController,
                hintText: "Ex: JA3610",
                obscureText: false,
                text: "Matrícula: *",
                keyBoardType: TextInputType.text,
                icon: const Icon(Icons.pin_outlined),
              ),
              const SizedBox(height: 20),
              //componente para o email do usuário
              MyTextField(
                  controller: emailUserController,
                  hintText: "Ex: lucas@malwee.com.br",
                  obscureText: false,
                  text: "E-mail: *",
                  keyBoardType: TextInputType.emailAddress,
                  icon: const Icon(
                    Icons.mail,
                  )),
              const SizedBox(height: 20),
              //Dropdown da permissão
              ValueListenableBuilder(
                  valueListenable: dropValue,
                  builder: (BuildContext context, String value, _) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.00),
                      child: DropdownButtonFormField(
                        iconDisabledColor: Colors.blue,
                        iconEnabledColor: Colors.blue,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.grey.shade200,
                          labelText: "Permissão",
                          labelStyle: const TextStyle(color: Colors.blue),
                          enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.blue),
                          ),
                          focusedBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.blue),
                          ),
                        ),
                        hint: const Text("Permissão: *"),
                        isExpanded: true,
                        value: (value.isEmpty) ? null : value,
                        onChanged: (escolha) =>
                            dropValue.value = escolha.toString(),
                        items: itens
                            .map(
                              (opcao) => DropdownMenuItem(
                                value: opcao,
                                child: Text(opcao),
                              ),
                            )
                            .toList(),
                      ),
                    );
                  }),
              //ElevatedButton Adicionar
              const Expanded(
                child: SizedBox(),
              ),
              Container(
                width: double.infinity,
                height: 50,
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
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
            ],
          )),
    );
  }
}
