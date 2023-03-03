import 'package:flutter/material.dart';
import '../components/my_text_field.dart';
// ignore: depend_on_referenced_packages
import 'package:file_picker/file_picker.dart';
import 'package:image_picker/image_picker.dart';

class FormularioItem extends StatelessWidget {
  FormularioItem({super.key});
  //variável para o nome do item
  final nomeItemController = TextEditingController();
  //variável para a quantidade do item
  final quantidadeItemController = TextEditingController();
  //variável para o patrimônio do item
  final patrimonioItemController = TextEditingController();
  //variável para o centro de custos do item
  final centroDecustoController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Entrg Item'),
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back),
          ),
          //actions: <Widget>[
          //  IconButton(
          //    icon: const Icon(
          //      Icons.settings,
          //      color: Colors.white,
          //    ),
          //    onPressed: () {
          //      // do something
          //   },
          //  )
          //],
        ),
        body: Column(
          children: [
            const SizedBox(height: 20),
            //componente para o  nome do item
            MyTextField(
              controller: nomeItemController,
              hintText: "Ex: Mouse",
              obscureText: false,
              text: "Nome: *",
              keyBoardType: TextInputType.text,
              icon: const Icon(Icons.edit),
            ),
            const SizedBox(height: 20),
            //componente para a quantidade do item
            MyTextField(
              controller: quantidadeItemController,
              hintText: "Ex: 30",
              obscureText: false,
              text: "Quantidade: *",
              keyBoardType: TextInputType.number,
              icon: const Icon(Icons.pin_outlined),
            ),
            const SizedBox(height: 20),
            //componente para o  patrimônio do item
            MyTextField(
              controller: patrimonioItemController,
              hintText: "Ex: 1123",
              obscureText: false,
              text: "Patrimônio: *",
              keyBoardType: TextInputType.number,
              icon: const Icon(Icons.pin_outlined),
            ),
            const SizedBox(height: 25),
            //
            Container(
              width: double.infinity,
              height: 50,
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: ElevatedButton.icon(
                icon: const Icon(Icons.picture_as_pdf),
                label: const Text("Clique para adicionar a NF"),
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        const Color.fromARGB(255, 230, 231, 231)),
                    foregroundColor: MaterialStateProperty.all<Color>(
                        const Color.fromARGB(255, 52, 134, 221)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        side: const BorderSide(color: Colors.blue),
                      ),
                    )),
                onPressed: () async {
                  //FilePicker
                  final result = await FilePicker.platform.pickFiles();
                  if (result == null) return;
                  //se o result for diferente de null ele retornará

                  //final file = result.files.first;
                  //openFile(file);
                  //print('Name: ${file.name}');
                  //print('Bytes: ${file.bytes}');
                  //print('Name: ${file.size}');
                  //print('Extension: ${file.extension}');
                  //print('Path: ${file.path}');
                },
              ),
            ),
            const SizedBox(height: 20),
            Container(
              width: double.infinity,
              height: 100,
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: ElevatedButton.icon(
                icon: const Icon(Icons.camera_alt_outlined),
                label: const Text("Adicionar imagem aqui"),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                      const Color.fromARGB(255, 230, 231, 231)),
                  foregroundColor: MaterialStateProperty.all<Color>(
                      const Color.fromARGB(255, 52, 134, 221)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                      side: const BorderSide(color: Colors.blue),
                    ),
                  ),
                ),
                onPressed: () async {
                  //FilePicker
                  final result = await FilePicker.platform.pickFiles();
                  if (result == null) return;
                  //se o result for diferente de null ele retornará

                  //final file = result.files.first;
                  // openFile(file);
                  //print('Name: ${file.name}');
                  //print('Bytes: ${file.bytes}');
                  // print('Name: ${file.size}');
                  // print('Extension: ${file.extension}');
                  //print('Path: ${file.path}');
                },
              ),
            ),
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
        ),
      ),
    );
  }
}
