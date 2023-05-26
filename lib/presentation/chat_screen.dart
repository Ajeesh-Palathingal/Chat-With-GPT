import 'dart:developer';

import 'package:chat_with_gpt/application/models%20bloc/models_bloc.dart';
import 'package:chat_with_gpt/core/colors.dart';

import 'package:chat_with_gpt/presentation/widgets/chat_widget.dart';

import 'package:chat_with_gpt/presentation/widgets/text_widget.dart';

import 'package:chat_with_gpt/services/asset_manager.dart';
import 'package:chat_with_gpt/services/services.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import '../application/chat bloc/chat_bloc.dart';

final textEditingController = TextEditingController();
final listScrollController = ScrollController();

class ChatScreen extends StatelessWidget {
  ChatScreen({super.key});
  final focusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset(AssetManager.appBarLogo),
        title: const TextWidget(
          label: "Chat with GPT",
          color: kWhiteColor,
          fontSize: 20,
        ),
        actions: [
          IconButton(
            onPressed: () async {
              log("getting");
              context.read<ModelsBloc>().add(const ModelsEvent.getModels());
              await Services.showModalSheet(context: context);
            },
            icon: const Icon(
              Icons.more_vert_outlined,
              color: Colors.white,
            ),
          )
        ],
      ),
      body: BlocBuilder<ChatBloc, ChatState>(
        builder: (context, state) {
          return Column(
            children: [
              BlocBuilder<ChatBloc, ChatState>(
                builder: (context, state) {
                  return Flexible(
                    child: ListView.builder(
                      controller: listScrollController,
                      itemBuilder: ((context, index) {
                        return ChatWidget(
                                msg: state.chatList[index].message.toString(),
                                chatIndex: state.chatList[index].chatIndex!,
                              );
                      }),
                      itemCount: state.chatList.length,
                    ),
                  );
                },
              ),
              if (state.isLoading == true) ...[
                const SpinKitThreeBounce(
                  color: Colors.white,
                  size: 20,
                )
              ],
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 60,
                color: kCardColor,
                child: Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          textCapitalization: TextCapitalization.words,
                          controller: textEditingController,
                          focusNode: focusNode,
                          style: const TextStyle(color: kWhiteColor),
                          decoration: const InputDecoration(
                            hintText: "How can I help you?",
                            hintStyle: TextStyle(color: kGreyColor),
                          ),
                        ),
                      ),
                    ),
                    IconButton(
                      onPressed: () async {
                        // focusNode.unfocus();
                        context.read<ChatBloc>().add(const ChatEvent.sendMessage());
                      },
                      icon: const Icon(
                        Icons.send,
                        color: kWhiteColor,
                      ),
                    )
                  ],
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
