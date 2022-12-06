import 'dart:convert';
import 'package:http/http.dart' as http;



Future<Code> createCode(String p1, String p2, String p3, String url) async {
  final response = await http.post(
    Uri.parse(url),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: jsonEncode(<String, String>{'p1_codigo': p1, 'p2_codigo': p2, 'p3_codigo': p3}),
  );

  if (response.statusCode == 200) {
    // If the server did return a 201 CREATED response,
    // then parse the JSON.
    return Code.fromJson(jsonDecode(response.body));
  } else {
    // If the server did not return a 201 CREATED response,
    // then throw an exception.
    throw Exception('Failed to create album.');
  }
}

class Code {
  final String p1, p2, p3;

  const Code({required this.p1, required this.p2, required this.p3});

  factory Code.fromJson(Map<String, dynamic> json) {
    return Code(
        p1: json['p1_codigo'],
        p2: json['p2_codigo'],
        p3: json['p2_codigo']
      );
  }
}