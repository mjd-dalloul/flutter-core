import 'package:flutter/material.dart';
import 'package:flutter_core/state_mangement/mobx_state_management/base_mobx/base_viewmodel.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class MobxLoadingPage<T extends BaseViewmodel> extends StatelessWidget {
  const MobxLoadingPage({
    Key? key,
    required this.viewModel,
    required this.child,
    this.loadingWidget = const Center(child: CircularProgressIndicator()),
    this.barrierColor = const Color(0xFFc7c7c7),
    this.useStack = false,
    this.animationDuration = const Duration(milliseconds: 400),
  }) : super(key: key);

  final Widget child;

  final T viewModel;
  final Widget loadingWidget;

  final Color barrierColor;

  final Duration animationDuration;
  final bool useStack;

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) => !useStack
          ? AnimatedSwitcher(
              duration: animationDuration,
              child: viewModel.isLoading
                  ? Container(
                      width: double.infinity,
                      height: double.infinity,
                      decoration: BoxDecoration(color: barrierColor.withOpacity(0.3)),
                      child: loadingWidget,
                    )
                  : child,
            )
          : Stack(
              children: [
                AbsorbPointer(absorbing: viewModel.isLoading, child: child),
                Positioned.fill(
                  child: AnimatedSwitcher(
                    duration: animationDuration,
                    child: viewModel.isLoading
                        ? Container(
                            width: double.infinity,
                            height: double.infinity,
                            decoration: BoxDecoration(color: barrierColor.withOpacity(0.3)),
                            child: loadingWidget,
                          )
                        : const SizedBox.shrink(),
                  ),
                ),
              ],
            ),
    );
  }
}
