import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../resources/app_them_data.dart';

class TextFieldWidget extends StatelessWidget {
  final String? title;
  final String hintText;
  final TextEditingController? controller;
  final Function()? onPress;
  final Function()? onChanged;
  final Widget? prefix;
  final Widget? suffix;
  final bool? enable;
  final bool? readOnly;
  final bool? obscureText;
  final int? maxLine;
  final TextInputType? textInputType;
  final List<TextInputFormatter>? inputFormatters;
  final String? Function(String?)? validator;
  const TextFieldWidget({
    super.key,
    this.textInputType,
    this.enable,
    this.prefix,
    this.title,
    required this.hintText,
    required this.controller,
    this.onPress,
    this.maxLine,
    this.inputFormatters,
    this.obscureText,
    this.onChanged,
    this.validator,
    this.suffix,
    this.readOnly,
  });

  @override
  Widget build(BuildContext context) {
    // final themeChange = instanceGetIt.get<AppCubit>();
    var inputDecoration = InputDecoration(
      suffixIcon: suffix,
      errorStyle: const TextStyle(color: AppThemData.semanticColorError08),
      isDense: true,
      filled: true,
      enabled: enable ?? true,
      fillColor:
          enable ?? true ? AppThemData.white : AppThemData.assetColorGrey400,
      contentPadding: EdgeInsets.symmetric(
        vertical: 16,
        horizontal: prefix != null ? 0 : 10,
      ),
      prefixIcon: prefix,
      hintText: hintText,
    );
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Visibility(
            visible: title != null,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title ?? '',
                  style: const TextStyle(
                    fontFamily: AppThemData.medium,
                    fontSize: 16,
                    color: AppThemData.assetColorLightGrey1000,
                  ),
                ),
                const SizedBox(height: 5),
              ],
            ),
          ),
          TextFormField(
            readOnly: readOnly ?? false,
            keyboardType: textInputType ?? TextInputType.text,
            textCapitalization: TextCapitalization.sentences,
            controller: controller,
            enabled: enable ?? true,
            textAlign: TextAlign.start,
            maxLines: maxLine ?? 1,
            textInputAction: TextInputAction.done,
            inputFormatters: inputFormatters,
            obscureText: obscureText ?? false,
            onChanged: (value) => onChanged,
            validator: validator,
            onTap: onPress,
            style: TextStyle(
              fontSize: 16,
              color: enable ?? true
                  ? AppThemData.assetColorGrey600
                  : AppThemData.assetColorGrey100,
              fontFamily: AppThemData.medium,
            ),
            decoration: inputDecoration,
          ),
        ],
      ),
    );
  }
}
