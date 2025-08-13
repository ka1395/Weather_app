import 'package:flutter/material.dart';

import 'state_renderer.dart';

abstract class FlowState {
  StateRendererType getStateRendererType();
  // dynamic Function()? getRetryActionFunction();
  String getMessage();
  String getDescription();
}
// loading state (POPUP,FULL SCREEN)

class LoadingState extends FlowState {
  StateRendererType stateRendererType;
  String message;
  String? description;
  LoadingState({
    required this.stateRendererType,
    required this.message,
    this.description,
    // this.retryActionFunction,
  });
  @override
  String getMessage() => message;

  @override
  StateRendererType getStateRendererType() => stateRendererType;

  // @override
  // dynamic Function()? getRetryActionFunction() => retryActionFunction ?? () {};

  @override
  String getDescription() => description ?? "";
}

// error state (POPUP,FULL SCREEN)
class ErrorState extends FlowState {
  StateRendererType stateRendererType;
  // dynamic Function()? retryActionFunction;
  String message;
  String? description;

  ErrorState({
    required this.stateRendererType,
    required this.message,
    this.description,
    // this.retryActionFunction,
  });
  @override
  String getMessage() => message;
  @override
  StateRendererType getStateRendererType() => stateRendererType;
  @override
  // dynamic Function()? getRetryActionFunction() => retryActionFunction ?? () {};
  @override
  String getDescription() => description ?? "";
}

// content state

class ContentState extends FlowState {
  ContentState();

  @override
  String getMessage() => "";

  @override
  StateRendererType getStateRendererType() => StateRendererType.contentState;

  @override
  String getDescription() => "";

  // @override
  // Function()? getRetryActionFunction() => () {};
}

// EMPTY STATE

class EmptyState extends FlowState {
  String message;

  EmptyState({required this.message});

  @override
  String getMessage() => message;

  @override
  StateRendererType getStateRendererType() =>
      StateRendererType.fullScreenEmptyState;

  @override
  String getDescription() => "";

  //   @override
  //   Function()? getRetryActionFunction() => () {};
}

// success state
class SuccessState extends FlowState {
  StateRendererType stateRendererType;
  // dynamic Function()? retryActionFunction;
  String message;
  String? description;
  SuccessState({
    required this.stateRendererType,
    required this.message,
    this.description,
    // this.retryActionFunction,
  });

  @override
  String getMessage() => message;

  @override
  StateRendererType getStateRendererType() => stateRendererType;

  @override
  String getDescription() => description ?? "";

  // @override
  // Function()? getRetryActionFunction() => retryActionFunction ?? () {};
}

extension FlowStateExtension on FlowState {
  Widget getScreenWidget({
    required BuildContext context,
    required Widget contentScreenWidget,
    final dynamic Function()? retryActionFunction,
    bool isDismissDialog = true,
  }) {
    if (this is LoadingState) {
      dismissDialog(context);

      if (getStateRendererType() == StateRendererType.popupLoadingState) {
        // show popup loading
        showPopup(context, getStateRendererType(), getMessage());
        // show content ui of the screen
        return contentScreenWidget;
      } else {
        // full screen loading state
        return StateRenderer(
          message: getMessage(),
          stateRendererType: getStateRendererType(),
          retryActionFunction: retryActionFunction ?? () {},
        );
      }
    } else if (this is ErrorState) {
      dismissDialog(context);
      if (getStateRendererType() == StateRendererType.popupErrorState) {
        // show popup error
        showPopup(
          context,
          getStateRendererType(),
          getMessage(),
          retryActionFunction: retryActionFunction,
        );
        // show content ui of the screen
        return contentScreenWidget;
      } else {
        // full screen error state
        return StateRenderer(
          message: getMessage(),
          stateRendererType: getStateRendererType(),
          retryActionFunction: retryActionFunction ?? () {},
        );
      }
    } else if (this is EmptyState) {
      dismissDialog(context);
      return StateRenderer(
        stateRendererType: getStateRendererType(),
        message: getMessage(),
        retryActionFunction: () {},
      );
    } else if (this is SuccessState) {
      dismissDialog(context);
      if (getStateRendererType() == StateRendererType.popupSuccess) {
        // show popup error
        showPopup(
          context,
          getStateRendererType(),
          getMessage(),
          title: getDescription(),
          retryActionFunction: retryActionFunction,
        );
        // show content ui of the screen
        return contentScreenWidget;
      } else {
        // full screen error state
        return StateRenderer(
          message: getMessage(),
          description: getDescription(),
          stateRendererType: getStateRendererType(),
          retryActionFunction: retryActionFunction ?? () {},
        );
      }
    } else if (this is ContentState) {
      // content state
      if (isDismissDialog) {
        // dismiss dialog if it is showing
        dismissDialog(context);
      }
      return contentScreenWidget;
    } else {
      if (isDismissDialog) {
        // dismiss dialog if it is showing
        dismissDialog(context);
      }
      return contentScreenWidget;
    }
  }

  _isCurrentDialogShowing(BuildContext context) =>
      ModalRoute.of(context)?.isCurrent != true;

  dismissDialog(BuildContext context) {
    if (Navigator.canPop(context)) {
      // If the dialog is showing, pop it
      if (_isCurrentDialogShowing(context)) {
        Navigator.of(context, rootNavigator: true).pop();
      }
    }
  }

  showPopup(
    BuildContext context,
    StateRendererType stateRendererType,
    String message, {
    String title = "",
    dynamic Function()? retryActionFunction,
  }) {
    WidgetsBinding.instance.addPostFrameCallback(
      (_) => showDialog(
        barrierDismissible: false,
        context: context,
        builder: (BuildContext context) => StateRenderer(
          stateRendererType: stateRendererType,
          message: message,
          description: title,
          retryActionFunction: retryActionFunction ?? () {},
        ),
      ),
    );
  }
}
