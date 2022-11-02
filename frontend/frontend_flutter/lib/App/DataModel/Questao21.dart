import 'dart:convert';
import 'package:http/http.dart' as http;

Future<Questao1> fetchQuestao1() async {
  final String q1 = '62a5fb0986ab49540495b82c';
  final response =
      await http.get(Uri.parse('http://127.0.0.1:5000/codigo/${q1}'));

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    return Questao1.fromJson(jsonDecode(response.body));
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load album');
  }
}

class Questao1 {
  final String codigo;

  const Questao1({
    required this.codigo,
  });

  factory Questao1.fromJson(Map<String, dynamic> json) {
    return Questao1(
      codigo: json['codigo'],
    );
  }
}

