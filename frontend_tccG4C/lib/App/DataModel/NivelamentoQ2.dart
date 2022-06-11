//62a2d3b617c0193c4307b378
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<NivelQ2> fetchNivelQ2() async {
  final String nq2 = '62a2d3b617c0193c4307b378';
  final response =
      await http.get(Uri.parse('http://127.0.0.1:5000/codigo/${nq2}'));

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    return NivelQ2.fromJson(jsonDecode(response.body));
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load album');
  }
}

class NivelQ2 {
  final String codigo;

  const NivelQ2({
    required this.codigo,
  });

  factory NivelQ2.fromJson(Map<String, dynamic> json) {
    return NivelQ2(
      codigo: json['codigo'],
    );
  }
}
