//import 'package:http/http.dart' show Client;
import 'dart:async';
import 'dart:convert';
//import 'package:http/http.dart' show Client;
import 'package:http/http.dart' as http;
import 'package:app_ventas/src/models/Empresa/lista_Empresa_Model.dart';
import 'package:app_ventas/src/resources/util.dart';

class EmpresasProvider {
  //Client client = Client();
  
     final _baseUrl = baseUrl; // "https://localhost:3000";
    Future<List<Empresa>> getEmpresa() async {
      //String url =_baseUrl + "/getespecialidades/$nsecHospital";
      String url = "$_baseUrl/getobtenerEmpresa/";//"http://localhost:3000/getobtenerEmpresa";
      final resp = await http.get("$url");
      final decodedData=json.decode(resp.body);
      final empresas= new Empresas.fromJsonList(decodedData['results']);
      return empresas.items;
    }
}