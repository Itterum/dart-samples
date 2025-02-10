import 'package:bloc/bloc.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'dart:io';

class Message {
  final String sender;
  final String content;
  final DateTime timestamp;

  const Message({
    required this.sender,
    required this.content,
    required this.timestamp,
  });

  @override
  String toString() => 'From: $sender, Message: $content, Time: $timestamp';
}

class ChatState {
  final List<Message> messages;
  final bool isLoading;
  final String? errorMessage;

  const ChatState({
    this.messages = const [],
    this.isLoading = false,
    this.errorMessage,
  });

  ChatState copyWith({
    List<Message>? messages,
    bool? isLoading,
    String? errorMessage,
  }) {
    return ChatState(
      messages: messages ?? this.messages,
      isLoading: isLoading ?? this.isLoading,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }
}

abstract class ChatEvent {}

class SendMessage extends ChatEvent {
  final String sender;
  final String content;

  SendMessage({required this.sender, required this.content});
}

class ClearMessages extends ChatEvent {}

class ChatBloc extends Bloc<ChatEvent, ChatState> {
  ChatBloc() : super(const ChatState()) {
    on<SendMessage>((event, emit) async {
      emit(state.copyWith(isLoading: true, errorMessage: null));

      try {
        final response = await http.post(
          Uri.parse('http://localhost:11434/api/chat'),
          body: jsonEncode({
            'model': 'codeLlama:7b',
            'messages': [
              {'role': 'user', 'content': event.content},
            ],
          }),
          headers: {'Content-Type': 'application/json'},
        );

        if (response.statusCode != 200 || response.body.isEmpty) {
          final error =
              'Error occurred while sending message: ${response.body} (${response.statusCode})';
          emit(state.copyWith(isLoading: false, errorMessage: error));
          return;
        }

        final responseLines = response.body.split('\n');
        final aiResponse = StringBuffer();
        List<Message> messages = List.from(state.messages);

        for (var line in responseLines) {
          if (line.trim().isEmpty) continue;

          final data = jsonDecode(line);
          aiResponse.write(data['message']['content']);

          if (data['done'] == true) {
            messages.add(Message(
              sender: 'AI (${data['model']})',
              content: aiResponse.toString().trim(),
              timestamp: DateTime.now(),
            ));

            break;
          }
        }

        emit(state.copyWith(
          isLoading: false,
          messages: messages,
        ));
      } catch (e) {
        final error = 'Error occurred while sending message: $e';
        emit(state.copyWith(isLoading: false, errorMessage: error));
      }
    });

    on<ClearMessages>((event, emit) {
      emit(state.copyWith(messages: []));
    });
  }
}

void main() {
  final chatBloc = ChatBloc();

  chatBloc.add(SendMessage(sender: 'Itterum', content: 'Hi!'));

  chatBloc.stream.listen((state) {
    if (state.isLoading) {
      stdout.writeln('Loading...');
    }

    if (state.errorMessage != null) {
      stdout.writeln('Error: ${state.errorMessage}');
    }

    if (state.messages.isNotEmpty) {
      stdout.writeln('Messages: ${state.messages}');
    }
  });
}
