import 'dart:developer';

import 'package:chat_with_gpt/application/models%20bloc/models_bloc.dart';
import 'package:chat_with_gpt/core/colors.dart';
import 'package:chat_with_gpt/core/constants.dart';
import 'package:chat_with_gpt/domain/model/models_resp/models_resp.dart';
import 'package:chat_with_gpt/presentation/widgets/chat_widget.dart';
import 'package:chat_with_gpt/presentation/widgets/text_widget.dart';
import 'package:chat_with_gpt/services/api_service.dart';
import 'package:chat_with_gpt/services/asset_manager.dart';
import 'package:chat_with_gpt/services/services.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class ChatScreen extends StatelessWidget {
  ChatScreen({super.key});
  final _textEditingController = TextEditingController();
  
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
      body: Column(
        children: [
          Flexible(
            child: ListView.builder(
              itemBuilder: ((context, index) {
                return ChatWidget(
                  msg: chatMessages[index]["msg"].toString(),
                  chatIndex: int.parse(
                    chatMessages[index]["chatIndex"].toString(),
                  ),
                );
              }),
              itemCount: 5,
            ),
          ),
          const SpinKitThreeBounce(
            color: Colors.white,
            size: 20,
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 60,
            color: kCardColor,
            child: Row(
              children: [
                Expanded(
                  child: TextFormField(
                    controller: _textEditingController,
                    style: const TextStyle(color: kWhiteColor),
                    decoration: const InputDecoration(
                      hintText: "How can I help you?",
                      hintStyle: TextStyle(color: kGreyColor),
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () async {
                    
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
      ),
    );
  }
}

