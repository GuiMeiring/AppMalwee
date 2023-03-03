// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:login_page/components/Switcher.dart';
import 'package:login_page/pages/change_page.dart';
import 'package:login_page/pages/delivery_page.dart';
import 'package:login_page/pages/devolution_page.dart';
import 'package:login_page/pages/formulario_emprestar_item.dart';
import 'package:login_page/pages/formulario_item.dart';
import 'package:login_page/pages/formulario_user.dart';
import 'package:login_page/pages/loans_screen.dart';
import 'package:login_page/pages/login_page.dart';
import 'package:login_page/pages/my_account.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSwatch().copyWith(
            primary: const Color(0xff5680D3),
            secondary: const Color(0xff5680D3),
          ),
        ),
        routes: {
          '/': (context) => const DeliveryItemPage(),
          '/emprestimoPage': (context) => const FormularioEmprestimoPage(),
          '/teste': (context) => const Teste(),
          '/formularioAddUser': (context) => FormularioUser(),
        });
  }
}
