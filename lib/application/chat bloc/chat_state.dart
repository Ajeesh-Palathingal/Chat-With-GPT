part of 'chat_bloc.dart';

@freezed
class ChatState with _$ChatState {
  const factory ChatState({
    required bool isLoading,
    required bool hasError,
    required List<ChatResp> chatList,
    
  }) = _ChatState;
  factory ChatState.initial() => const ChatState(
        isLoading: false,
        hasError: false,
        chatList: [],
      );
}
