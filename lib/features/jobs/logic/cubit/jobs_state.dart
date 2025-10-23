

import 'package:freezed_annotation/freezed_annotation.dart';

part 'jobs_state.freezed.dart';

@freezed
class JobsState<T> with _$JobsState {
  const factory JobsState.initial() = _Initial;
    const factory JobsState.loading() = Loading;
      const factory JobsState.success(T data) = Success<T>;
        const factory JobsState.fail(String error) = Fail;

}
