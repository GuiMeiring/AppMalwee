// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:login_page/pages/formulario_item.dart';
import 'package:login_page/pages/my_account.dart';
import '../components/loginBtn.dart';
import 'formulario_emprestar_item.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

Widget buildId() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      const Text(
        'Matrícula',
        style: TextStyle(
            color: Color(0xff5680D3),
            fontSize: 20,
            fontWeight: FontWeight.bold),
      ),
      const SizedBox(height: 10),
      Container(
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
            color: Color(0xffF6F6F6),
            border: Border.all(color: Color(0xff5680D3), width: 1),
            borderRadius: BorderRadius.circular(5),
            boxShadow: const [
              BoxShadow(
                  color: Colors.black26, blurRadius: 2, offset: Offset(0, 1))
            ]),
        height: 60,
        child: const TextField(
          keyboardType: TextInputType.text,
          style: TextStyle(color: Colors.black87),
          decoration: InputDecoration(
              hintStyle: TextStyle(fontSize: 17),
              hintText: 'Insira a sua matrícula',
              border: InputBorder.none,
              contentPadding: EdgeInsets.all(20),
              suffixIcon: Icon(
                Icons.edit,
                color: Color(0xff5680D3),
              )),
        ),
      )
    ],
  );
}

Widget buildPassword() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      const Text(
        'Senha',
        style: TextStyle(
            color: Color(0xff5680D3),
            fontSize: 20,
            fontWeight: FontWeight.bold),
      ),
      const SizedBox(height: 10),
      Container(
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
            color: Color(0xffF6F6F6),
            border: Border.all(color: Color(0xff5680D3), width: 1),
            borderRadius: BorderRadius.circular(5),
            boxShadow: const [
              BoxShadow(
                  color: Colors.black26, blurRadius: 2, offset: Offset(0, 1))
            ]),
        height: 60,
        child: const TextField(
          obscureText: true,
          style: TextStyle(color: Colors.black87),
          decoration: InputDecoration(
              hintStyle: TextStyle(fontSize: 17),
              hintText: 'Insira a sua senha',
              border: InputBorder.none,
              contentPadding: EdgeInsets.all(20),
              suffixIcon: Icon(
                Icons.lock,
                color: Color(0xff5680D3),
              )),
        ),
      )
    ],
  );
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light,
      child: GestureDetector(
        child: Stack(
          children: <Widget>[
            Container(
                height: double.infinity,
                width: double.infinity,
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [Color(0xffEAEAEA), Color(0xffEAEAEA)])),
                child: SingleChildScrollView(
                  physics: const AlwaysScrollableScrollPhysics(),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 25, vertical: 120),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image.network(
                          'https://grupomalwee.com.br/wp-content/themes/grupo-malwee-theme/static/images/brands/logo-grupo-malwee.png'),
                      //Image.asset,
                      const SizedBox(height: 50),
                      buildId(),
                      const SizedBox(height: 20),
                      buildPassword(),
                      const SizedBox(height: 30),
                      // buildLoginBtn()
                       const MyButton(),
                      
                    ],
                  ),
                ))
          ],
        ),
      ),
    ));
  }
}
