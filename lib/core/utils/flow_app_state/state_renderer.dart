import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import '../../../generated/l10n.dart';
import '../../resources/app_them_data.dart';
import '../../resources/json_assets.dart';
import '../../resources/responive.dart';
import '../../widgets/round_button_fill.dart';

enum StateRendererType {
  // POPUP STATES (DIALOG)
  popupLoadingState,
  popupErrorState,
  popupSuccess,
  // FULL SCREEN STATED (FULL SCREEN)
  fullScreenLoadingState,
  fullScreenErrorState,
  fullScreenEmptyState,
  fullScreenSuccessState,
  // general
  contentState,
}

class StateRenderer extends StatelessWidget {
  final StateRendererType stateRendererType;
  final String message;
  final dynamic Function() retryActionFunction;
  final String? description;

  const StateRenderer({
    super.key,
    required this.stateRendererType,
    required this.retryActionFunction,
    required this.message,
    this.description,
  });

  @override
  Widget build(BuildContext context) {
    var localization = S.of(context);
    switch (stateRendererType) {
      case StateRendererType.popupLoadingState:
        return PopUpDialog(
          children: [
            const AnimatedImage(animationName: JsonAssets.loading),
            MessageState(message: message),
          ],
        );
      case StateRendererType.popupErrorState:
        return PopUpDialog(
          children: [
            const AnimatedImage(animationName: JsonAssets.error),
            MessageState(message: message),
            RetryButton(
              buttondescription: localization.retryAgain,
              stateRendererType: stateRendererType,
              retryActionFunction: retryActionFunction,
            ),
          ],
        );
      case StateRendererType.popupSuccess:
        return PopUpDialog(
          children: [
            const AnimatedImage(animationName: JsonAssets.success),
            MessageState(message: message),
            if (description != null)
              DescriptionState(description: description ?? ""),
            RetryButton(
              buttondescription: localization.Continue,
              stateRendererType: stateRendererType,
              retryActionFunction: retryActionFunction,
            ),
          ],
        );
      case StateRendererType.fullScreenLoadingState:
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const AnimatedImage(animationName: JsonAssets.loading),
            MessageState(message: message),
          ],
        );
      case StateRendererType.fullScreenErrorState:
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const AnimatedImage(animationName: JsonAssets.error),
            MessageState(message: message),
            if (description != null)
              DescriptionState(description: description ?? ""),
            RetryButton(
              buttondescription: localization.retryAgain,
              stateRendererType: stateRendererType,
              retryActionFunction: retryActionFunction,
            ),
          ],
        );
      case StateRendererType.fullScreenEmptyState:
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const AnimatedImage(animationName: JsonAssets.empty),
            MessageState(message: message),
          ],
        );
      case StateRendererType.contentState:
        return Container();
      case StateRendererType.fullScreenSuccessState:
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const AnimatedImage(animationName: JsonAssets.success),
            MessageState(message: message),
            if (description != null)
              DescriptionState(description: description ?? ""),
            RetryButton(
              buttondescription: localization.Continue,
              stateRendererType: stateRendererType,
              retryActionFunction: retryActionFunction,
            ),
          ],
        );
    }
  }
}

class MessageState extends StatelessWidget {
  const MessageState({super.key, required this.message});
  final String message;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Text(
          message,
          style: Theme.of(context).textTheme.headlineSmall,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}

class DescriptionState extends StatelessWidget {
  final String description;

  const DescriptionState({super.key, required this.description});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Text(
          description,
          style: Theme.of(
            context,
          ).textTheme.titleLarge!.copyWith(color: AppThemData.colorGray),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}

class RetryButton extends StatelessWidget {
  const RetryButton({
    super.key,
    required this.buttondescription,
    required this.stateRendererType,
    required this.retryActionFunction,
  });
  final String buttondescription;
  final StateRendererType stateRendererType;
  final dynamic Function() retryActionFunction;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      child: RoundedButtonFill(
        title: buttondescription,
        color: AppThemData.primaryColor,
        textColor: AppThemData.white,
        fontFamily: AppThemData.bold,
        onPress: retryActionFunction,

        // () {
        //   if (stateRendererType == StateRendererType.fullScreenErrorState ||
        //       stateRendererType == StateRendererType.fullScreenSuccessState) {
        //     // call retry function
        //     retryActionFunction!();
        //   } else {
        //     // popup error state
        //     Navigator.of(context).pop();
        //   }
        // },
      ),
    );
  }
}

class PopUpDialog extends StatelessWidget {
  final List<Widget> children;

  const PopUpDialog({super.key, required this.children});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
      elevation: 1.5,
      backgroundColor: Colors.transparent,
      child: Container(
        width: Responsive.width(70, context),
        decoration: BoxDecoration(
          color:  AppThemData.white,
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(14),
          boxShadow: const [BoxShadow(color: Colors.black26)],
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: children,
        ),
      ),
    );
  }
}

class AnimatedImage extends StatelessWidget {
  final String animationName;

  const AnimatedImage({super.key, required this.animationName});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Responsive.height(15, context),
      child: Lottie.asset(animationName),
    );
  }
}
