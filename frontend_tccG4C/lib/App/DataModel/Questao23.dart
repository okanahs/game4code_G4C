import 'dart:convert';
import 'package:http/http.dart' as http;

Future<Questao3> fetchQuestao3() async {
  final String q3 = '62a5fc7a86ab49540495b830';
  final response =
      await http.get(Uri.parse('http://127.0.0.1:5000/codigo/${q3}'));

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    return Questao3.fromJson(jsonDecode(response.body));
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load album');
  }
}

class Questao3 {
  final String codigo;

  const Questao3({
    required this.codigo,
  });

  factory Questao3.fromJson(Map<String, dynamic> json) {
    return Questao3(
      codigo: json['codigo'],
    );
  }
}
