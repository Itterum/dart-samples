import 'dart:convert';

import 'package:http/http.dart' as http;

import 'messages.dart';

void main() async {
  final client = http.Client();

  try {
    final response = await postPrompt(client, 'gemma3', 'Hello, World!');
    final chunks = await response.stream
        .transform(utf8.decoder)
        .transform(const LineSplitter())
        .map((line) => Chunk.fromJson(jsonDecode(line)))
        .toList();

    String message = '';

    for (final chunk in chunks) {
      message += chunk.message.content;
    }

    print(message);
  } catch (e) {
    print('Error: $e');
  } finally {
    client.close();
  }
}

Future<http.StreamedResponse> postPrompt(
    http.Client client, String model, String prompt) async {
  final uri = Uri.parse('http://192.168.100.4:11434/api/chat');
  final request = http.Request('POST', uri)
    ..headers['Content-Type'] = 'application/json'
    ..body = jsonEncode({
      'model': model,
      'messages': [
        {'role': 'user', 'content': prompt},
      ],
      'stream': true,
    });

  return await client.send(request);
}
