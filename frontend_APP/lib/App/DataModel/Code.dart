/*import 'dart:convert';
import 'package:http/http.dart' as http;



Future<Code> createCode(String code, String url) async {
  final response = await http.post(
    Uri.parse(url),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: jsonEncode(<String, dynamic>{'codigo': code}),
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
  final String code;

  const Code({required this.code});

  factory Code.fromJson(Map<String, dynamic> json) {
    return Code(
        code: json['codigo'],
      );
  }
}*/