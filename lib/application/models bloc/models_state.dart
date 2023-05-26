part of 'models_bloc.dart';

@freezed
class ModelsState with _$ModelsState {
  const factory ModelsState({
    required bool isLoading,
    required bool hasError,
    required List<String> modelsList,
    required String currentModel,
  }) = _ModelsState;

  factory ModelsState.initial() => const ModelsState(
        isLoading: false,
        hasError: false,
        modelsList: [],
        currentModel: "gpt-3.5-turbo",
      );
}
