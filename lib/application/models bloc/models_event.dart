part of 'models_bloc.dart';

@freezed
class ModelsEvent with _$ModelsEvent {
  const factory ModelsEvent.getModels() = _GetModels;
  const factory ModelsEvent.selectModel() = _SelectModel;
}
