import 'package:flutter/material.dart';

class LowPage extends StatelessWidget {
  LowPage({super.key});

  final motivo_controller = TextEditingController();
  final patrimonio_controller = TextEditingController();
  final add1_controller = TextEditingController();
  final add2_controller = TextEditingController();
  final add3_controller = TextEditingController();
  final add4_controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Dar Baixa"),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back),
        ),
        actions: const <Widget>[],
      ),
      body: Container(
        height: double.infinity,
        child: Column(
          children: [
            Expanded(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  child: TextField(
                    controller: motivo_controller,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.fromLTRB(50, 90, 50, 10),
                      filled: true,
                      fillColor: Colors.white,
                      hintText: "Insira o motivo...",
                      hintStyle: const TextStyle(
                        color: Colors.blue,
                      ),
                      labelStyle: const TextStyle(color: Colors.blue),
                      enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue),
                      ),
                      focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue),
                      ),
                      prefixIcon: IconButton(
                          color: Colors.blue,
                          onPressed: () async {},
                          icon: const Icon(Icons.chat_bubble)),
                    ),
                  ),
                ),
                Container(
                  margin:
                      EdgeInsets.only(top: 5, bottom: 10, left: 10, right: 10),
                  child: TextField(
                    controller: patrimonio_controller,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.fromLTRB(50, 30, 50, 10),
                      filled: true,
                      fillColor: Colors.white,
                      hintText: "Insira o patrimônio",
                      hintStyle: const TextStyle(
                        color: Colors.blue,
                      ),
                      labelStyle: const TextStyle(color: Colors.blue),
                      enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue),
                      ),
                      focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue),
                      ),
                      prefixIcon: IconButton(
                          color: Colors.blue,
                          onPressed: () async {},
                          icon: const Icon(Icons.numbers)),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Text('Patrimônios adicionados',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      )),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  child: TextField(
                    textAlign: TextAlign.center,
                    controller: add1_controller,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.fromLTRB(50, 30, 50, 10),
                      filled: true,
                      fillColor: Colors.grey.shade200,
                      hintText: "123456",
                      hintStyle: const TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.black),
                      enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue),
                      ),
                      focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  child: TextField(
                    textAlign: TextAlign.center,
                    controller: add2_controller,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.fromLTRB(50, 30, 50, 10),
                      filled: true,
                      fillColor: Colors.grey.shade200,
                      hintText: "123456",
                      hintStyle: const TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.black),
                      enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue),
                      ),
                      focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  child: TextField(
                    textAlign: TextAlign.center,
                    controller: add3_controller,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.fromLTRB(50, 30, 50, 10),
                      filled: true,
                      fillColor: Colors.grey.shade200,
                      hintText: "123456",
                      hintStyle: const TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.black),
                      enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue),
                      ),
                      focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  child: TextField(
                    textAlign: TextAlign.center,
                    controller: add4_controller,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.fromLTRB(50, 30, 50, 10),
                      filled: true,
                      fillColor: Colors.grey.shade200,
                      hintText: "123456",
                      hintStyle: const TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.black),
                      enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue),
                      ),
                      focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue),
                      ),
                    ),
                  ),
                ),
              ],
            )),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                margin: EdgeInsets.all(10),
                child: SizedBox(
                  height: 50,
                  width: 1500,
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
                    child: const Text('Finalizar'),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
