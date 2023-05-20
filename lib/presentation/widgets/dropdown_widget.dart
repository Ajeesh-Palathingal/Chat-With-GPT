import 'package:chat_with_gpt/application/models%20bloc/models_bloc.dart';
import 'package:chat_with_gpt/core/colors.dart';
import 'package:chat_with_gpt/core/constants.dart';
import 'package:chat_with_gpt/presentation/chat_screen.dart';
import 'package:chat_with_gpt/presentation/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import '../../domain/model/models_resp/models_resp.dart';

String currentModel = "Whisper-1";

class SelectModelDropdownWidget extends StatelessWidget {
  const SelectModelDropdownWidget({super.key});

  

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<ModelsBloc>(context).add(const ModelsEvent.getModels());
    });
    

    return BlocBuilder<ModelsBloc, ModelsState>(
      builder: (context, state) {
        
        print("Loading :${state.isLoading}");
        print("List : ${state.modelsList}");

        if (state.isLoading) {
          return const SizedBox(
            height: 20,
            child: SpinKitThreeBounce(
              color: Colors.white,
              size: 20,
            ),
          );
        } else {
          currentModel = state.currentModel;
          return DropdownButton(
            dropdownColor: kScaffoldBackgroundColor,
            iconEnabledColor: kWhiteColor,
            items: List<DropdownMenuItem<String>>.generate(
              state.modelsList.length,
              (index) => DropdownMenuItem(
                value: state.modelsList[index].id,
                child: TextWidget(
                  label: state.modelsList[index].id!,
                  color: kWhiteColor,
                ),
              ),
            ),
            value: currentModel,
            onChanged: (value) {
              
              currentModel = value.toString();
              
              context.read<ModelsBloc>().add(const ModelsEvent.selectModel());
            },
          );
        }
      },
    );
  }
}

