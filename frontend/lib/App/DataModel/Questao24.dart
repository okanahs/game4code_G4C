import 'dart:convert';
import 'package:http/http.dart' as http;

//oi
Future<Questao4> fetchQuestao4() async {
  final String q4 = '62a5fd0186ab49540495b832';
  final response =
      await http.get(Uri.parse('http://127.0.0.1:5000/codigo/${q4}'));

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    return Questao4.fromJson(jsonDecode(response.body));
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load album');
  }
}

class Questao4 {
  final String codigo;

  const Questao4({
    required this.codigo,
  });

  factory Questao4.fromJson(Map<String, dynamic> json) {
    return Questao4(
      codigo: json['codigo'],
    );
  }
}
