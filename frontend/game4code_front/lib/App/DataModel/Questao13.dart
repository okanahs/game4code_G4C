import 'dart:convert';
import 'package:http/http.dart' as http;

Future<Questao13> fetchQuestao13() async {
  final String q3 = '62a37736636e99753d738d8a';
  final response =
      await http.get(Uri.parse('http://127.0.0.1:5000/codigo/${q3}'));

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    return Questao13.fromJson(jsonDecode(response.body));
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load album');
  }
}

class Questao13 {
  final String codigo;

  const Questao13({
    required this.codigo,
  });

  factory Questao13.fromJson(Map<String, dynamic> json) {
    return Questao13(
      codigo: json['codigo'],
    );
  }
}