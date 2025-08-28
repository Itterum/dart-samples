import 'dart:isolate';
import 'dart:typed_data' as td;

import 'package:dart_app/raylib_app/protos/scene.pb.dart' as pb;
import 'package:raylib/raylib.dart' as rl;

class RendererIsolate {
  static Future<void> start(SendPort mainSendPort) async {
    rl.initLibrary(
        windows: 'lib\\raylib_app\\raylib.dll',
        linux: '/usr/local/lib/libraylib.so');

    rl.initWindow(800, 600, 'Raylib app');
    rl.setTargetFPS(60);

    final receivePort = ReceivePort();
    mainSendPort.send(receivePort.sendPort);

    pb.Scene currentScene = pb.Scene()
      ..id = "text_scene"
      ..type = pb.SceneType.SCENE_2D
      ..nodes.addAll([
        pb.Node()
          ..id = "text_1"
          ..value = "Waiting for data..."
          ..type2d = pb.NodeType2D.NODE_2D_TEXT
          ..properties.addAll({'fontSize': '40'}),
      ]);

    pb.Scene? lastScene;
    final queue = <pb.Scene>[];

    receivePort.listen((message) {
      if (message is td.Uint8List) {
        try {
          final scene = pb.Scene.fromBuffer(message);
          queue.add(scene);
          print('Scene queued: "${scene.type}"');
        } catch (e) {
          print('Failed to decode protobuf: $e');
        }
      }
    });

    while (!rl.windowShouldClose()) {
      if (queue.isNotEmpty) {
        currentScene = queue.removeLast();
      }

      rl.beginDrawing();
      rl.clearBackground(rl.Color.rayWhite);

      _drawScene(currentScene);

      if (currentScene != lastScene) {
        print('Rendering scene: "${currentScene.type}"');
        lastScene = currentScene;
      }

      rl.endDrawing();
      await Future.delayed(Duration.zero);
    }

    rl.closeWindow();
  }

  static void _drawScene(pb.Scene scene) {
    if (scene.nodes.isEmpty) {
      print('No nodes to render');
      return;
    }

    for (var node in scene.nodes) {
      if (node.type2d == pb.NodeType2D.NODE_2D_CIRCLE) {
        final circle = scene.nodes.first;
        final radius = double.parse(circle.properties['radius']!);

        print(rl.Color.darkBlue.toString());

        rl.drawCircle(
            circle.x.toInt(), circle.y.toInt(), radius, rl.Color.darkGray);

        return;
      }

      if (node.type2d == pb.NodeType2D.NODE_2D_RECTANGLE) {
        final rect = scene.nodes.first;
        final width = double.parse(rect.properties['width']!);
        final height = double.parse(rect.properties['height']!);

        print(rl.Color.darkBlue.ref);

        rl.drawRectangle(rect.x.toInt(), rect.y.toInt(), width.toInt(),
            height.toInt(), rl.Color.darkGray);

        return;
      }

      if (node.type2d == pb.NodeType2D.NODE_2D_TEXT) {
        const fontSize = 40;

        final textWidth = rl.measureText(node.value, fontSize);

        final centerX = (rl.getScreenWidth() / 2) - (textWidth / 2);
        final centerY = (rl.getScreenHeight() / 2) - (fontSize / 2);

        rl.drawText(node.value, centerX.toInt(), centerY.toInt(), fontSize,
            rl.Color.darkGray);

        return;
      }
    }
  }
}
