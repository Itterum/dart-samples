import 'logger.dart';
import 'message_model.dart';
import 'chat_model.dart';
import 'chat_bloc.dart';
import 'events.dart';
import 'state.dart';

void main() async {
  setupLogging();

  final Chat initialChat = Chat.init();
  final ChatBloc chatBloc = ChatBloc(initialChat);

  chatBloc.add(GetModelsEvent());

  chatBloc.stream.listen((ChatState state) {
    if (state.errorMessage != null) {
      logger.severe(state.errorMessage);
    }

    logger.info('Models: ${state.models?.map((e) => e.name).join(', ')}');

    logger.info('Current AI Model: ${state.currentAIModel?.model}');

    logger.info('Chat: ${state.chat.id}');

    logger.info(
        'Messages: ${state.chat.sessions.first.messages.map((message) => '${message.role}: ${message.content}').join(', ')}');
  });

  Future.delayed(Duration(seconds: 1), () {
    chatBloc.add(SetCurrentModelEvent(model: chatBloc.state.models?.last));
  });

  Future.delayed(Duration(seconds: 2), () {
    chatBloc.add(InitialSessionEvent(
      sessionId: initialChat.currentSessionId,
      model: chatBloc.state.currentAIModel,
    ));

    chatBloc.add(AddMessageEvent(
      sessionId: initialChat.currentSessionId,
      model: chatBloc.state.currentAIModel?.model,
      message: Message(role: 'user', content: 'Hello'),
    ));
  });
}
