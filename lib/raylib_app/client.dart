import 'dart:io';
import 'dart:typed_data';
import 'protos/scene.pb.dart' as pb;

Future<void> main() async {
  final socket = await WebSocket.connect('ws://localhost:8080/ws');
  print('Connected to server. Type text and press Enter:');

  stdin.listen((data) {
    final input = String.fromCharCodes(data).trim();
    if (input.isEmpty) return;

    var scene = pb.Scene();

    switch (input) {
      case 'circle':
        scene = pb.Scene()
          ..id = 'circle_scene'
          ..type = pb.SceneType.SCENE_2D
          ..nodes.add(pb.Node()
            ..id = 'circle'
            ..x = 100
            ..y = 150
            ..type2d = pb.NodeType2D.NODE_2D_CIRCLE
            ..properties.addAll({'radius': '50'}));

        final Uint8List buffer = scene.writeToBuffer();
        socket.add(buffer);

        print('Sent: $input');
        break;
      case 'rectangle':
        break;
      default:
        scene = pb.Scene()
          ..id = 'input_scene'
          ..type = pb.SceneType.SCENE_2D
          ..nodes.add(pb.Node()
            ..id = 'text_input'
            ..value = input
            ..type2d = pb.NodeType2D.NODE_2D_TEXT
            ..properties.addAll({'fontSize': '40'}));

        final Uint8List buffer = scene.writeToBuffer();
        socket.add(buffer);

        print('Sent: $input');
        break;
    }
  });

  socket.listen((message) {
    print('Server message: $message');
  });
}
