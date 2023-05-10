import 'package:chat_with_gpt/core/colors.dart';
import 'package:chat_with_gpt/core/constants.dart';
import 'package:flutter/material.dart';

class SelectModelDropdownWidget extends StatefulWidget {
  const SelectModelDropdownWidget({super.key});

  @override
  State<SelectModelDropdownWidget> createState() =>
      _SelectModelDropdownWidgetState();
}

class _SelectModelDropdownWidgetState extends State<SelectModelDropdownWidget> {
  String currentModel = "Model 1";
  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      dropdownColor: kScaffoldBackgroundColor,
      iconEnabledColor: kWhiteColor,
      items: getModelsItem,
      value: currentModel,
      onChanged: (value) {
        setState(() {
          currentModel = value.toString();
        });
      },
    );
  }
}
