import 'dart:developer';
import 'dart:ffi';
import 'package:chat_with_gpt/presentation/widgets/dropdown_widget.dart';
import 'package:flutter/foundation.dart';

import 'package:bloc/bloc.dart';
import 'package:chat_with_gpt/domain/model/models_resp/models_resp.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../services/api_service.dart';
import '../../services/services.dart';

part 'models_event.dart';
part 'models_state.dart';
part 'models_bloc.freezed.dart';

class ModelsBloc extends Bloc<ModelsEvent, ModelsState> {
  ModelsBloc() : super(ModelsState.initial()) {
    on<_GetModels>((event, emit) async {
      //print("Models list in bloc : ${state.modelsList}");

      if (state.modelsList.isNotEmpty) {
        emit(state.copyWith(
          isLoading: false,
          currentModel: state.currentModel,
          modelsList: state.modelsList,
        ));
        return;
      }
      emit(state.copyWith(isLoading: true));

      if (state.modelsList.isEmpty) {
        final models = await ApiService.getModels();

        emit(state.copyWith(isLoading: false, modelsList: models));
        return;
      } else {
        log("Network issue occured");
      }

      // await Services.showModalSheet(context: );
    });
    on<_SelectModel>((event, emit) async {
      // print("current model : ${currentModel}");

      emit(state.copyWith(currentModel: currentModel));
    });
  }
}
