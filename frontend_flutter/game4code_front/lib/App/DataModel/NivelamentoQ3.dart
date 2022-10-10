//62a2b9e117c0193c4307b373
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<NivelQ3> fetchNivelQ3() async {
  final String nq3 = '62a2b9e117c0193c4307b373';
  final response =
      await http.get(Uri.parse('http://127.0.0.1:5000/codigo/${nq3}'));

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    return NivelQ3.fromJson(jsonDecode(response.body));
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load album');
  }
}

class NivelQ3 {
  final String codigo;

  const NivelQ3({
    required this.codigo,
  });

  factory NivelQ3.fromJson(Map<String, dynamic> json) {
    return NivelQ3(
      codigo: json['codigo'],
    );
  }
}

