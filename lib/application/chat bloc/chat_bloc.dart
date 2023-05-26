import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:chat_with_gpt/core/constants.dart';
import 'package:chat_with_gpt/presentation/chat_screen.dart';
import 'package:chat_with_gpt/services/services.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/model/chat_resp/chat_resp.dart';
import '../../presentation/widgets/dropdown_widget.dart';
import '../../services/api_service.dart';

part 'chat_event.dart';
part 'chat_state.dart';
part 'chat_bloc.freezed.dart';

class ChatBloc extends Bloc<ChatEvent, ChatState> {
  final List<ChatResp> chatList = [];
  ChatBloc() : super(ChatState.initial()) {
    on<_SendMessage>((event, emit) async {
      // log("Working sendmessage");
      try {
        final response;
        String question = textEditingController.text;
        textEditingController.clear();

        chatList.add(ChatResp(message: question, chatIndex: 0));
        
        emit(state.copyWith(isLoading: true, hasError: false, chatList: chatList));
        if (modelSet1.contains(currentModel)) {
          response = await ApiService.getReplyMessageSet1(message: question, model: currentModel);
        } else {
          response = await ApiService.getReplyMessageSet2(message: question, model: currentModel);
        }

        print("The list is : ${response[0]}");
        // print("The index is : ${response[0].chatIndex}");

        chatList.add(ChatResp(message: response[0].message, chatIndex: 1));

        if (state.hasError) {
          emit(state.copyWith(isLoading: false));
        }
        // print("${chatList[index]["msg"].toString()}");
        emit(state.copyWith(isLoading: false, chatList: chatList));
      } catch (e) {
        print(e);
        chatList.add(ChatResp(
            message:
                "Sorry...!\nSomething went wrong 😢\nPlease check your network connection and try again.",
            chatIndex: 1));
        emit(state.copyWith(isLoading: false, hasError: true));
      } finally {
        Services().scrollListToEnd();
      }
    });
  }
}
