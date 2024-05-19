import 'package:flutter/material.dart';
import 'package:ghar_subidha/core/theme/theme_config.dart';
import 'package:ghar_subidha/core/utils/size_utils.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    this.alignment,
    this.width,
    this.controller,
    this.focusNode,
    this.autofocus = true,
    this.textStyle,
    this.obscureText = false,
    this.textInputAction = TextInputAction.next,
    this.textInputType = TextInputType.text,
    this.maxLines,
    this.hintText,
    this.hintStyle,
    this.prefix,
    this.prefixConstraints,
    this.suffix,
    this.suffixConstraints,
    this.contentPadding,
    this.borderDecoration,
    this.fillColor,
    this.filled = true,
    this.validator,
    this.autovalidateMode,
    this.onFieldSubmitted,
    required this.isLightTheme,
    this.readOnly, this.height, this.extendTextField,
  });

  final Alignment? alignment;

  final double? width;
  final double? height;
  final bool? extendTextField;
   final TextEditingController? controller;

  final FocusNode? focusNode;

  final bool? autofocus;

  final TextStyle? textStyle;

  final bool? obscureText;

  final TextInputAction? textInputAction;

  final TextInputType? textInputType;

  final int? maxLines;

  final String? hintText;

  final TextStyle? hintStyle;

  final Widget? prefix;

  final BoxConstraints? prefixConstraints;

  final Widget? suffix;

  final BoxConstraints? suffixConstraints;

  final EdgeInsets? contentPadding;

  final InputBorder? borderDecoration;

  final Color? fillColor;

  final bool? filled;
  final bool? readOnly;
  final bool isLightTheme;
  final AutovalidateMode? autovalidateMode;
  final FormFieldValidator<String>? validator;
  final Function(String)? onFieldSubmitted;
  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: textFormFieldWidget,
          )
        : textFormFieldWidget;
  }

  Widget get textFormFieldWidget => SizedBox(
        width: width ?? double.maxFinite,
        height: height,
        child: TextFormField(
            cursorColor: Colors.black,
            expands: extendTextField?? false,
            controller: controller,
            focusNode: focusNode ?? FocusNode(),
            autofocus: autofocus!,
            style: textStyle, //?? CustomTextStyles.bodyMediumBluegray100,
            obscureText: obscureText!,
            textInputAction: textInputAction,
            keyboardType: textInputType,
            maxLines: maxLines ?? 1,
            decoration: decoration,
            readOnly: readOnly ?? false,
            validator: validator,
            autovalidateMode: autovalidateMode ?? AutovalidateMode.disabled,
            onFieldSubmitted: onFieldSubmitted),
      );
  InputDecoration get decoration => InputDecoration(
        hintText: hintText ?? "",
        hintStyle: hintStyle, //?? CustomTextStyles.titleSmallWhiteA700,
        prefixIcon: prefix,
        prefixIconConstraints: prefixConstraints,
        suffixIcon: suffix,
        suffixIconConstraints: suffixConstraints,
        isDense: true,
        contentPadding: contentPadding ?? EdgeInsets.all(14.h),
        fillColor: fillColor ?? AppColors.textFieldColor,
        filled: filled,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.h),
          borderSide: const BorderSide(
            color: AppColors.blueColor,
          ),
        ),
        enabledBorder: borderDecoration ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.h),
              borderSide: const BorderSide(color: AppColors.blueColor),
            ),
        focusedBorder: borderDecoration ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.h),
              borderSide: const BorderSide(color: AppColors.blueColor),
            ),
      );
}
