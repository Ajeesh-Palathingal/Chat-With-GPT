part of 'models_bloc.dart';

@freezed
class ModelsState with _$ModelsState {
  const factory ModelsState({
    required bool isLoading,
    required List<ModelsResp> modelsList,
    required String currentModel,
  }) = _ModelsState;

  factory ModelsState.initial() => const ModelsState(
        isLoading: false,
        modelsList: [],
        currentModel: "whisper-1",
      );
}
