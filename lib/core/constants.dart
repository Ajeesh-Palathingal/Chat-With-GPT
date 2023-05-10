import 'package:chat_with_gpt/core/colors.dart';
import 'package:chat_with_gpt/presentation/widgets/text_widget.dart';
import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';

final chatMessages = [
  {
    "msg": "Hello who are you?",
    "chatIndex": 0,
  },
  {
    "msg":
        "Hello i am cgpt, Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
    "chatIndex": 1,
  },
  {
    "msg": "what is flutter?",
    "chatIndex": 2,
  },
  {
    "msg": "App development framework",
    "chatIndex": 3,
  },
  {
    "msg": "hey",
    "chatIndex": 4,
  },
];

final List<String> models = [
  "Model 1",
  "Model 2",
  "Model 3",
  "Model 4",
  "Model 5",
  "Model 6",
  "Model 7",
  "Model 8",
];

List<DropdownMenuItem<String>>? get getModelsItem {
  List<DropdownMenuItem<String>> modelsItems = List<DropdownMenuItem<String>>.generate(
    models.length,
    (index) => DropdownMenuItem(
      value: models[index],
      child: TextWidget(
        label: models[index],
        color: kWhiteColor,
      ),
    ),
  );
  return modelsItems;
}
