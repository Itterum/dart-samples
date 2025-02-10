import 'package:bloc/bloc.dart';
import 'package:dart_app/oop/ollama/ai_response_model.dart';

import 'logger.dart';
import 'ai_model.dart';
import 'chat_model.dart';
import 'chat_service.dart';
import 'events.dart';
import 'message_model.dart';
import 'session_model.dart';
import 'state.dart';

class ChatBloc extends Bloc<ChatEvent, ChatState> {
  ChatBloc(Chat initialChat) : super(ChatState(chat: initialChat)) {
    on<AddMessageEvent>(_onAddMessage);
    on<GetModelsEvent>(_onGetModels);
    on<SetCurrentModelEvent>(_onSetCurrentModel);
  }

  Future<void> _onAddMessage(
      AddMessageEvent event, Emitter<ChatState> emit) async {
    try {
      emit(state.copyWith(isLoading: true, errorMessage: null));

      final Messages messages = List.from(
        state.chat.sessions
            .firstWhere((ChatSession session) => session.id == event.sessionId)
            .messages,
      );

      final List<ChatSession> updateSessions =
          state.chat.sessions.map((ChatSession session) {
        if (session.id == event.sessionId) {
          messages.add(Message(
            role: 'user',
            content: event.message.content,
          ));
          return session.copyWith(messages: messages);
        }
        return session;
      }).toList();

      emit(state.copyWith(
        chat: state.chat.copyWith(sessions: updateSessions),
        isLoading: true,
      ));

      final AIResponse response =
          await ChatService.sendMessage(event.model, event.message.content);

      final Message aiMessage = Message(
        role: response.message.role,
        content: response.message.content,
      );

      final List<ChatSession> updatedSessionsWithAI =
          state.chat.sessions.map((ChatSession session) {
        if (session.id == event.sessionId) {
          final List<Message> updatedMessages =
              List<Message>.from(session.messages)..add(aiMessage);
          return session.copyWith(messages: updatedMessages);
        }
        return session;
      }).toList();

      emit(state.copyWith(
        chat: state.chat.copyWith(sessions: updatedSessionsWithAI),
        isLoading: false,
      ));
    } catch (e) {
      final String error = 'Error occurred while sending message: $e';
      logger.severe(error);
      emit(state.copyWith(isLoading: false, errorMessage: error));
    }
  }

  void _onGetModels(GetModelsEvent event, Emitter<ChatState> emit) async {
    final List<AIModel> models = await ChatService.getModels();

    emit(state.copyWith(models: models));
  }

  void _onSetCurrentModel(
      SetCurrentModelEvent event, Emitter<ChatState> emit) async {
    emit(state.copyWith(currentAIModel: event.model));
  }
}
