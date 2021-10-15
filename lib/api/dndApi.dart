// ignore: unused_import
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:masterdice/models/bookClass.dart';
import 'package:masterdice/models/classes.dart';
import 'dart:convert';
import 'package:masterdice/globais.dart' as globais;

class ClassRequisitor {
  //HttpClient _http = HttpClient();

  Future<Classes> classesRPG() async {
    try {
      var url = "https://www.dnd5eapi.co/api/classes";
      // ignore: close_sinks
      final response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        var lista = response.body;
        Map<String, dynamic> parsed = jsonDecode(lista);
        Classes classes = Classes.fromJson(parsed);

        return classes;
      } else
        throw 'Failed';
    } catch (ex) {
      throw new Exception(ex);
    }
  }

  Future<Classe> selectClass() async {
    String index = globais.index.toString();
    try {
      var url = "https://www.dnd5eapi.co/api/classes/$index";
      // ignore: close_sinks
      final response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        var lista = response.body;
        Map<String, dynamic> parsed = jsonDecode(lista);
        Classe classes = Classe.fromJson(parsed);

        return classes;
      } else
        throw 'Failed';
    } catch (ex) {
      throw new Exception(ex);
    }
  }
}
