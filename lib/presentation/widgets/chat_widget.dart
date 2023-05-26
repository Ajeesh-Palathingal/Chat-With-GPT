import 'package:chat_with_gpt/core/colors.dart';
import 'package:chat_with_gpt/presentation/widgets/text_widget.dart';
import 'package:chat_with_gpt/services/asset_manager.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class ChatWidget extends StatelessWidget {
  const ChatWidget({super.key, required this.msg, required this.chatIndex});

  final String msg;
  final int chatIndex;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: chatIndex == 0 ? kScaffoldBackgroundColor : kCardColor,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              chatIndex == 0 ? AssetManager.userChatLogo : AssetManager.gptChatLogo,
              height: 40,
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: chatIndex == 0
                  ? TextWidget(
                      label: msg,
                      color: kWhiteColor,
                    )
                  : DefaultTextStyle(
                      style: const TextStyle(color: kWhiteColor),
                      child: AnimatedTextKit(
                        isRepeatingAnimation: false,
                        repeatForever: false,
                        totalRepeatCount: 1,
                        displayFullTextOnTap: true,
                        animatedTexts: [
                          TyperAnimatedText(msg.trim()),
                        ],
                      ),
                    ),
            ),
            // chatIndex == 0
            //     ? const SizedBox()
            //     : Row(
            //         children: const [
            //           Icon(
            //             Icons.thumb_up_alt_outlined,
            //             color: kGreyColor,
            //           ),
            //           SizedBox(
            //             width: 5,
            //           ),
            //           Icon(
            //             Icons.thumb_down_alt_outlined,
            //             color: kGreyColor,
            //           ),
            //         ],
            //       ),
          ],
        ),
      ),
    );
  }
}
