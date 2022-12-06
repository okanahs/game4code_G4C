import 'dart:convert';
import 'package:http/http.dart' as http;

Future<Questao> fetchQuestao(String url) async {
  final response =
      await http.get(Uri.parse(url));

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    return Questao.fromJson(jsonDecode(response.body));
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load album');
  }
}

class Questao {
  final String pergunta;

  const Questao({
    required this.pergunta,
  });

  factory Questao.fromJson(Map<String, dynamic> json) {
    return Questao(
      pergunta: json['pergunta'],
    );
  }
}
