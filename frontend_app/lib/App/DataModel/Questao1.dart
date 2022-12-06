import 'dart:convert';
import 'package:http/http.dart' as http;

Future<Questao1> fetchQuestao1(String url) async {
  final response =
      await http.get(Uri.parse(url));

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
  final String cabecalho;
  final String a;
  final String b;
  final String c;
  final String d;
  final String op;

  const Questao1({
    required this.cabecalho,
    required this.a,
    required this.b,
    required this.c,
    required this.d,
    required this.op,
  });

  factory Questao1.fromJson(Map<String, dynamic> json) {
    return Questao1(
      cabecalho: json['cabecalho'],
      a: json['a'],
      b: json['b'],
      c: json['c'],
      d: json['d'],
      op: json['op'],
    );
  }
}