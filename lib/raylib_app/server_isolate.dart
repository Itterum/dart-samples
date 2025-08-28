import 'dart:io';
import 'dart:isolate';
import 'dart:typed_data' as td;

class ServerIsolate {
  static Future<void> start(SendPort sendPort) async {
    final server = await HttpServer.bind('0.0.0.0', 8080);
    print('WebSocket server running on ws://localhost:8080/ws');

    await for (HttpRequest request in server) {
      if (request.uri.path == '/ws') {
        final socket = await WebSocketTransformer.upgrade(request);
        print('Client connected');

        socket.listen((data) {
          if (data is td.Uint8List) {
            print('Received binary data (${data.length} bytes)');
            sendPort.send(data);
          } else if (data is String) {
            print('Received string data, but expected binary protobuf');
          }
        }, onDone: () {
          print('Client disconnected');
        }, onError: (error) {
          print('WebSocket error: $error');
        });
      } else {
        request.response.statusCode = 404;
        request.response.write('Not Found');
        await request.response.close();
      }
    }
  }
}
