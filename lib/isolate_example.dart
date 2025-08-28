import 'dart:isolate';

import 'package:logger/logger.dart';

var logger = Logger(printer: PrettyPrinter());

void main() async {
  final firstPort = ReceivePort();
  final secondPort = ReceivePort();

  Isolate.spawn(startFirstCommand, firstPort.sendPort);
  Isolate.spawn(startSecondCommand, secondPort.sendPort);

  final secondSendPort = await secondPort.first as SendPort;

  firstPort.listen((message) {
    secondSendPort.send('Hello from first command!');
  });
}

void startFirstCommand(SendPort sendPort) {
  sendPort.send('Received message from first');
}

void startSecondCommand(SendPort sendPort) {
  final receivePort = ReceivePort();
  sendPort.send(receivePort.sendPort);

  receivePort.listen((message) {
    sendPort.send('Received message from second: $message');
    print('Received message from second: $message');
  });
}
