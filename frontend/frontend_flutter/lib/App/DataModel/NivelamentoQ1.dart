//62a2cf9517c0193c4307b377

import 'dart:convert';
import 'package:http/http.dart' as http;

Future<NivelQ1> fetchNivelQ1() async {
  final String nq1 = '62a2cf9517c0193c4307b377';
  final response =
      await http.get(Uri.parse('http://127.0.0.1:5000/codigo/${nq1}'));

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    return NivelQ1.fromJson(jsonDecode(response.body));
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load album');
  }
}

class NivelQ1 {
  final String codigo;

  const NivelQ1({
    required this.codigo,
  });

  factory NivelQ1.fromJson(Map<String, dynamic> json) {
    return NivelQ1(
      codigo: json['codigo'],
    );
  }
}

