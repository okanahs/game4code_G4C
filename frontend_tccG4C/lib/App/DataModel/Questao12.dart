import 'dart:convert';
import 'package:http/http.dart' as http;

Future<Questao12> fetchQuestao12() async {
  final String q2 = '62a5f34f86ab49540495b828';
  final response =
      await http.get(Uri.parse('http://127.0.0.1:5000/codigo/${q2}'));

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    return Questao12.fromJson(jsonDecode(response.body));
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load album');
  }
}

class Questao12 {
  final String codigo;

  const Questao12({
    required this.codigo,
  });

  factory Questao12.fromJson(Map<String, dynamic> json) {
    return Questao12(
      codigo: json['codigo'],
    );
  }
}
