import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppBlocObserver extends BlocObserver {
  @override
  void onCreate(BlocBase bloc) {
    if (kDebugMode) {
      log('OnCreate -- ${bloc.runtimeType}');
    }
    super.onCreate(bloc);
  }

  @override
  void onEvent(Bloc bloc, Object? event) {
    super.onEvent(bloc, event);
    if (kDebugMode) {
      log('OnEvent -- ${bloc.runtimeType} -- $event');
    }
  }

  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    if (kDebugMode) {
      log('OnChange -- ${bloc.runtimeType} -- $change');
    }
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    super.onError(bloc, error, stackTrace);
    if (kDebugMode) {
      log('OnError -- ${bloc.runtimeType} -- $error');
    }
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    if (kDebugMode) {
      log('OnTransition -- ${bloc.runtimeType} -- $transition');
    }
    super.onTransition(bloc, transition);
  }

  @override
  void onClose(BlocBase bloc) {
    if (kDebugMode) {
      log('OnClose -- ${bloc.runtimeType}');
    }
    super.onClose(bloc);
  }
}
