import 'ai_model.dart';
import 'chat_model.dart';

class ChatState {
  final Chat chat;
  final bool isLoading;
  final List<AIModel>? models;
  final AIModel? currentAIModel;
  final String? errorMessage;

  const ChatState({
    required this.chat,
    this.isLoading = false,
    this.models,
    this.currentAIModel,
    this.errorMessage,
  });

  ChatState copyWith({
    Chat? chat,
    bool? isLoading,
    List<AIModel>? models,
    AIModel? currentAIModel,
    String? errorMessage,
  }) {
    return ChatState(
      chat: chat ?? this.chat,
      isLoading: isLoading ?? this.isLoading,
      models: models ?? this.models,
      currentAIModel: currentAIModel ?? this.currentAIModel,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }
}
