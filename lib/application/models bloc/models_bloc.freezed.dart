// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'models_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ModelsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getModels,
    required TResult Function() selectModel,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getModels,
    TResult? Function()? selectModel,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getModels,
    TResult Function()? selectModel,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetModels value) getModels,
    required TResult Function(_SelectModel value) selectModel,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetModels value)? getModels,
    TResult? Function(_SelectModel value)? selectModel,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetModels value)? getModels,
    TResult Function(_SelectModel value)? selectModel,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ModelsEventCopyWith<$Res> {
  factory $ModelsEventCopyWith(
          ModelsEvent value, $Res Function(ModelsEvent) then) =
      _$ModelsEventCopyWithImpl<$Res, ModelsEvent>;
}

/// @nodoc
class _$ModelsEventCopyWithImpl<$Res, $Val extends ModelsEvent>
    implements $ModelsEventCopyWith<$Res> {
  _$ModelsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_GetModelsCopyWith<$Res> {
  factory _$$_GetModelsCopyWith(
          _$_GetModels value, $Res Function(_$_GetModels) then) =
      __$$_GetModelsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetModelsCopyWithImpl<$Res>
    extends _$ModelsEventCopyWithImpl<$Res, _$_GetModels>
    implements _$$_GetModelsCopyWith<$Res> {
  __$$_GetModelsCopyWithImpl(
      _$_GetModels _value, $Res Function(_$_GetModels) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_GetModels with DiagnosticableTreeMixin implements _GetModels {
  const _$_GetModels();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ModelsEvent.getModels()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'ModelsEvent.getModels'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_GetModels);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getModels,
    required TResult Function() selectModel,
  }) {
    return getModels();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getModels,
    TResult? Function()? selectModel,
  }) {
    return getModels?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getModels,
    TResult Function()? selectModel,
    required TResult orElse(),
  }) {
    if (getModels != null) {
      return getModels();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetModels value) getModels,
    required TResult Function(_SelectModel value) selectModel,
  }) {
    return getModels(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetModels value)? getModels,
    TResult? Function(_SelectModel value)? selectModel,
  }) {
    return getModels?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetModels value)? getModels,
    TResult Function(_SelectModel value)? selectModel,
    required TResult orElse(),
  }) {
    if (getModels != null) {
      return getModels(this);
    }
    return orElse();
  }
}

abstract class _GetModels implements ModelsEvent {
  const factory _GetModels() = _$_GetModels;
}

/// @nodoc
abstract class _$$_SelectModelCopyWith<$Res> {
  factory _$$_SelectModelCopyWith(
          _$_SelectModel value, $Res Function(_$_SelectModel) then) =
      __$$_SelectModelCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SelectModelCopyWithImpl<$Res>
    extends _$ModelsEventCopyWithImpl<$Res, _$_SelectModel>
    implements _$$_SelectModelCopyWith<$Res> {
  __$$_SelectModelCopyWithImpl(
      _$_SelectModel _value, $Res Function(_$_SelectModel) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_SelectModel with DiagnosticableTreeMixin implements _SelectModel {
  const _$_SelectModel();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ModelsEvent.selectModel()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'ModelsEvent.selectModel'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SelectModel);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getModels,
    required TResult Function() selectModel,
  }) {
    return selectModel();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getModels,
    TResult? Function()? selectModel,
  }) {
    return selectModel?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getModels,
    TResult Function()? selectModel,
    required TResult orElse(),
  }) {
    if (selectModel != null) {
      return selectModel();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetModels value) getModels,
    required TResult Function(_SelectModel value) selectModel,
  }) {
    return selectModel(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetModels value)? getModels,
    TResult? Function(_SelectModel value)? selectModel,
  }) {
    return selectModel?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetModels value)? getModels,
    TResult Function(_SelectModel value)? selectModel,
    required TResult orElse(),
  }) {
    if (selectModel != null) {
      return selectModel(this);
    }
    return orElse();
  }
}

abstract class _SelectModel implements ModelsEvent {
  const factory _SelectModel() = _$_SelectModel;
}

/// @nodoc
mixin _$ModelsState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get hasError => throw _privateConstructorUsedError;
  List<String> get modelsList => throw _privateConstructorUsedError;
  String get currentModel => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ModelsStateCopyWith<ModelsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ModelsStateCopyWith<$Res> {
  factory $ModelsStateCopyWith(
          ModelsState value, $Res Function(ModelsState) then) =
      _$ModelsStateCopyWithImpl<$Res, ModelsState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool hasError,
      List<String> modelsList,
      String currentModel});
}

/// @nodoc
class _$ModelsStateCopyWithImpl<$Res, $Val extends ModelsState>
    implements $ModelsStateCopyWith<$Res> {
  _$ModelsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? hasError = null,
    Object? modelsList = null,
    Object? currentModel = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: null == hasError
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
      modelsList: null == modelsList
          ? _value.modelsList
          : modelsList // ignore: cast_nullable_to_non_nullable
              as List<String>,
      currentModel: null == currentModel
          ? _value.currentModel
          : currentModel // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ModelsStateCopyWith<$Res>
    implements $ModelsStateCopyWith<$Res> {
  factory _$$_ModelsStateCopyWith(
          _$_ModelsState value, $Res Function(_$_ModelsState) then) =
      __$$_ModelsStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool hasError,
      List<String> modelsList,
      String currentModel});
}

/// @nodoc
class __$$_ModelsStateCopyWithImpl<$Res>
    extends _$ModelsStateCopyWithImpl<$Res, _$_ModelsState>
    implements _$$_ModelsStateCopyWith<$Res> {
  __$$_ModelsStateCopyWithImpl(
      _$_ModelsState _value, $Res Function(_$_ModelsState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? hasError = null,
    Object? modelsList = null,
    Object? currentModel = null,
  }) {
    return _then(_$_ModelsState(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: null == hasError
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
      modelsList: null == modelsList
          ? _value._modelsList
          : modelsList // ignore: cast_nullable_to_non_nullable
              as List<String>,
      currentModel: null == currentModel
          ? _value.currentModel
          : currentModel // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ModelsState with DiagnosticableTreeMixin implements _ModelsState {
  const _$_ModelsState(
      {required this.isLoading,
      required this.hasError,
      required final List<String> modelsList,
      required this.currentModel})
      : _modelsList = modelsList;

  @override
  final bool isLoading;
  @override
  final bool hasError;
  final List<String> _modelsList;
  @override
  List<String> get modelsList {
    if (_modelsList is EqualUnmodifiableListView) return _modelsList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_modelsList);
  }

  @override
  final String currentModel;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ModelsState(isLoading: $isLoading, hasError: $hasError, modelsList: $modelsList, currentModel: $currentModel)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ModelsState'))
      ..add(DiagnosticsProperty('isLoading', isLoading))
      ..add(DiagnosticsProperty('hasError', hasError))
      ..add(DiagnosticsProperty('modelsList', modelsList))
      ..add(DiagnosticsProperty('currentModel', currentModel));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ModelsState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.hasError, hasError) ||
                other.hasError == hasError) &&
            const DeepCollectionEquality()
                .equals(other._modelsList, _modelsList) &&
            (identical(other.currentModel, currentModel) ||
                other.currentModel == currentModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, hasError,
      const DeepCollectionEquality().hash(_modelsList), currentModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ModelsStateCopyWith<_$_ModelsState> get copyWith =>
      __$$_ModelsStateCopyWithImpl<_$_ModelsState>(this, _$identity);
}

abstract class _ModelsState implements ModelsState {
  const factory _ModelsState(
      {required final bool isLoading,
      required final bool hasError,
      required final List<String> modelsList,
      required final String currentModel}) = _$_ModelsState;

  @override
  bool get isLoading;
  @override
  bool get hasError;
  @override
  List<String> get modelsList;
  @override
  String get currentModel;
  @override
  @JsonKey(ignore: true)
  _$$_ModelsStateCopyWith<_$_ModelsState> get copyWith =>
      throw _privateConstructorUsedError;
}
