import 'package:uuid/uuid.dart';

String generateId() => Uuid().v4().replaceAll('-', '').substring(0, 10);
