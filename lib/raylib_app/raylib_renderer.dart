import 'dart:isolate';

import 'package:dart_app/raylib_app/renderer_isolate.dart';
import 'package:dart_app/raylib_app/server_isolate.dart';

void main() {
  App();
}

class App {
  final ReceivePort serverPort = ReceivePort();
  final ReceivePort renderPort = ReceivePort();

  App() {
    Isolate.spawn(ServerIsolate.start, serverPort.sendPort);
    Isolate.spawn(RendererIsolate.start, renderPort.sendPort);

    _setupCommunication();
  }

  void _setupCommunication() {
    SendPort? renderSendPort;

    renderPort.listen((message) {
      if (message is SendPort) {
        renderSendPort = message;
        print('Renderer ready');
      } else {
        print('Unknown message from renderer: $message');
      }
    });

    serverPort.listen((message) {
      if (renderSendPort != null) {
        renderSendPort!.send(message);
      } else {
        print('Renderer not ready, message dropped');
      }
    });
  }
}
