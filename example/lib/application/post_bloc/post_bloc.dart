import 'dart:async';

import 'package:example/domain/repository/i_post_repository.dart';
import 'package:example/infrastructure/models/post.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_core/state_mangement/bloc_state_management/base_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logger/logger.dart';

part 'post_bloc.freezed.dart';

part 'post_event.dart';

part 'post_state.dart';

class PostBloc extends BaseBloc<PostEvent, PostState> {
  PostBloc(Logger logger, this.repository)
      : super(PostState.initial(), logger) {
    on<PostRequested>(_onPostRequested);
  }

  final IPostRepository repository;

  Future<void> _onPostRequested(
          PostRequested event, Emitter<PostState> emit) async =>
      futureWrapper(
        futureCall: () => repository.getPosts(event.fromServer),
        useBaseBlocLoader: true,
        beforeFutureStarted: () => emit(
          state.copyWith(
            posts: [],
          ),
        ),
        onSuccess: (posts) {
          runFunctionWithContext((context) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(event.fromServer
                    ? 'Post fetched from server'
                    : 'Post fetched from local database'),
              ),
            );
          });
          emit(
            state.copyWith(posts: posts!),
          );
        },
      );
}
