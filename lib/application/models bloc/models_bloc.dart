import 'dart:developer';

import 'package:chat_with_gpt/core/constants.dart';
import 'package:chat_with_gpt/presentation/widgets/dropdown_widget.dart';
import 'package:flutter/foundation.dart';

import 'package:bloc/bloc.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../services/api_service.dart';

part 'models_event.dart';
part 'models_state.dart';
part 'models_bloc.freezed.dart';

class ModelsBloc extends Bloc<ModelsEvent, ModelsState> {
  ModelsBloc() : super(ModelsState.initial()) {
    on<_GetModels>((event, emit) async {
      try {
        if (state.modelsList.isNotEmpty) {
          emit(state.copyWith(
            isLoading: false,
            currentModel: state.currentModel,
            modelsList: state.modelsList,
          ));
          return;
        }
        emit(state.copyWith(isLoading: true, hasError: false));

        if (state.modelsList.isEmpty) {
          final models = await ApiService.getModels();

          List<String> modelsList = [];

          for (final item in models) {
            if (modelSet1.contains(item.id.toString()) || modelSet2.contains(item.id.toString())) {
              modelsList.add(item.id.toString());
            }
          }

          log("New models list : $modelsList");

          emit(state.copyWith(isLoading: false, modelsList: modelsList));
          return;
        }
      } catch (e) {
        print(e);
        emit(state.copyWith(isLoading: false, hasError: true));
      }
    });
    on<_SelectModel>((event, emit) async {
      emit(state.copyWith(currentModel: currentModel));
    });
  }
}
