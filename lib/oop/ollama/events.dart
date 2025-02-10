import 'ai_model.dart';
import 'message_model.dart';

abstract class ChatEvent {}

class InitialSessionEvent extends ChatEvent {
  final AIModel? model;
  final String sessionId;

  InitialSessionEvent({required this.sessionId, this.model});
}

class AddMessageEvent extends ChatEvent {
  final String sessionId;
  final String? model;
  final Message message;

  AddMessageEvent({
    required this.sessionId,
    required this.model,
    required this.message,
  });
}

class GetModelsEvent extends ChatEvent {}

class SetCurrentModelEvent extends ChatEvent {
  final AIModel? model;

  SetCurrentModelEvent({required this.model});
}
