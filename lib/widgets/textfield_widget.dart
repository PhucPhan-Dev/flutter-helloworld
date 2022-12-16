import 'package:flutter/material.dart';
import 'package:hello_world/constants/colors.dart';

class TextFieldWidget extends StatelessWidget {
  final String? hint;
  final String? label;
  final String? errorText;
  final TextInputType? inputType;
  final TextEditingController textController;
  final EdgeInsets padding;
  final Color hintColor;
  final FocusNode? focusNode;
  final ValueChanged? onFieldSubmitted;
  final ValueChanged? onChanged;
  final bool autoFocus;
  final TextInputAction? inputAction;
  final Color borderColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: padding,
        child: TextFormField(
          controller: textController,
          focusNode: focusNode,
          onFieldSubmitted: onFieldSubmitted,
          onChanged: onChanged,
          autofocus: autoFocus,
          textInputAction: inputAction,
          keyboardType: inputType,
          decoration: InputDecoration(
            hintText: hint,
            hintStyle: Theme.of(context)
                .textTheme
                .bodyText1!
                .copyWith(color: hintColor),
            labelText: label,
            errorText: errorText,
            counterText: '',
            border: OutlineInputBorder(
              borderSide: BorderSide(color: borderColor),
              borderRadius: const BorderRadius.all(
                Radius.circular(16),
              ),
            ),
          ),
        ));
  }

  const TextFieldWidget({
    Key? key,
    this.errorText,
    this.label,
    required this.textController,
    this.inputType,
    this.hint,
    this.padding = const EdgeInsets.all(0),
    this.hintColor = Colors.grey,
    this.focusNode,
    this.onFieldSubmitted,
    this.onChanged,
    this.autoFocus = false,
    this.inputAction,
    this.borderColor = AppColors.lightGray,
  }) : super(key: key);
}
