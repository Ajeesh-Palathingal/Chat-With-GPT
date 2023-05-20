import 'package:chat_with_gpt/presentation/widgets/dropdown_widget.dart';
import 'package:flutter/material.dart';

import '../core/colors.dart';
import '../domain/model/models_resp/models_resp.dart';
import '../presentation/widgets/text_widget.dart';

class Services {
  static Future<void> showModalSheet({
    required BuildContext context,
  }) async {
    await showModalBottomSheet(
        backgroundColor: kScaffoldBackgroundColor,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(15))),
        context: context,
        builder: (context) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: EdgeInsets.all(20.0),
                child: TextWidget(
                  label: "Selected Model :",
                  color: kWhiteColor,
                ),
              ),
              Expanded(
                child: SelectModelDropdownWidget(),
              )
            ],
          );
        });
  }
}
