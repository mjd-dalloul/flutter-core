import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_core/constant.dart';
import 'package:flutter_core/utils/app_localization.dart';

extension BuildContextExt on BuildContext {
  ThemeData get theme => Theme.of(this);

  TextTheme get textTheme => theme.textTheme;

  AppLocalizations? get locale => AppLocalizations.of(this);

  bool get isArabicLanguage =>
      locale?.locale.languageCode == SupportedLanguage.ARABIC;

  bool get isEnglishLanguage =>
      locale?.locale.languageCode == SupportedLanguage.ENGLISH;

  String translate(String key) => locale?.translate(key) ?? key;

  MediaQueryData get mediaQuery => MediaQuery.of(this);

  double get fullHeight => mediaQuery.size.height;

  double get fullWidth => mediaQuery.size.width;

  NavigatorState get navigator => Navigator.of(this);

  void pop<T>([T? result]) => navigator.pop<T>(result);

  Future<T?> pushMaterialPage<T>(Widget widget) =>
      navigator.push<T>(MaterialPageRoute(builder: (_) => widget));

  Future<T?>
      pushMaterialPageWithBloc<T, R extends StateStreamableSource<Object?>>(
              Widget widget, R bloc,
              [bool autoDispose = true]) =>
          autoDispose
              ? pushMaterialPage(
                  BlocProvider<R>(
                    create: (_) => bloc,
                    child: widget,
                  ),
                )
              : pushMaterialPage(
                  BlocProvider<R>.value(
                    value: bloc,
                    child: widget,
                  ),
                );

  Future<T?>
      pushCupertinoPageWithBloc<T, R extends StateStreamableSource<Object?>>(
              Widget widget, R bloc,
              [bool autoDispose = true]) =>
          autoDispose
              ? pushCupertinoPage(
                  BlocProvider<R>(
                    create: (_) => bloc,
                    child: widget,
                  ),
                )
              : pushCupertinoPage(
                  BlocProvider<R>.value(
                    value: bloc,
                    child: widget,
                  ),
                );

  Future<T?> pushCupertinoPage<T>(Widget widget) =>
      navigator.push<T>(CupertinoPageRoute(builder: (_) => widget));

  Future<T?> pushNamedAndRemoveUntil<T>(
    String routeName,
    RoutePredicate predicate, {
    Object? arguments,
  }) =>
      navigator.pushNamedAndRemoveUntil<T>(
        routeName,
        predicate,
        arguments: arguments,
      );
}
