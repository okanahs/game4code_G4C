import 'dart:convert';
import 'package:http/http.dart' as http;

Future<Questao11> fetchQuestao11() async {
  final String q1 = '62a2b9e117c0193c4307b373';
  final response =
      await http.get(Uri.parse('http://127.0.0.1:5000/codigo/${q1}'));

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    return Questao11.fromJson(jsonDecode(response.body));
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load album');
  }
}

class Questao11 {
  final String codigo;

  const Questao11({
    required this.codigo,
  });

  factory Questao11.fromJson(Map<String, dynamic> json) {
    return Questao11(
      codigo: json['codigo'],
    );
  }
}
