import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

part 'token_state.dart';
part 'token_cubit.freezed.dart';

class TokenCubit extends HydratedCubit<TokenState> {
  TokenCubit() : super(const TokenState.initial());

  
  @override
  TokenState? fromJson(Map<String, dynamic> json) => json['token'];

  @override
  Map<String, dynamic>? toJson(TokenState state) => {'token': state};
}

