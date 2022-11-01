import 'dart:convert';
import 'package:http/http.dart' as http;

Future<Questao2> fetchQuestao2() async {
  final String q2 = '62a5fba186ab49540495b82e';
  final response =
      await http.get(Uri.parse('http://127.0.0.1:5000/codigo/${q2}'));

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    return Questao2.fromJson(jsonDecode(response.body));
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load album');
  }
}

class Questao2 {
  final String codigo;

  const Questao2({
    required this.codigo,
  });

  factory Questao2.fromJson(Map<String, dynamic> json) {
    return Questao2(
      codigo: json['codigo'],
    );
  }
}
