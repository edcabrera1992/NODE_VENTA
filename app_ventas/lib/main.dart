import 'package:flutter/material.dart';

import 'package:app_ventas/src/pages/home_page.dart';
import 'package:app_ventas/src/pages/empresa_detalle.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'FERIA',
      initialRoute: '/',
      routes: {
        '/'       : ( BuildContext context ) => HomePage(),
        'detalle' : ( BuildContext context ) => EmpresaDetalle(),
      },
    );
  }
}