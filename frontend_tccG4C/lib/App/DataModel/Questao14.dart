import 'dart:convert';
import 'package:http/http.dart' as http;

Future<Questao14> fetchQuestao14() async {
  final String q4 = '62a5f54986ab49540495b82a';
  final response =
      await http.get(Uri.parse('http://127.0.0.1:5000/codigo/${q4}'));

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    return Questao14.fromJson(jsonDecode(response.body));
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load album');
  }
}

class Questao14 {
  final String codigo;

  const Questao14({
    required this.codigo,
  });

  factory Questao14.fromJson(Map<String, dynamic> json) {
    return Questao14(
      codigo: json['codigo'],
    );
  }
}
