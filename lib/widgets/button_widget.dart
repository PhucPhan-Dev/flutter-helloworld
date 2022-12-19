import 'package:flutter/material.dart';
import 'package:hello_world/constants/colors.dart';

enum Fruit { fill, outline, icon, text }

class ButtonWidget extends StatelessWidget {
  final EdgeInsets padding;
  final Fruit typeBtn;
  final String textButton;
  final BorderSide? borderRadius;
  final VoidCallback? onPressed;
  final bool disabled;

  @override
  Widget build(BuildContext context) {
    return Padding(padding: padding, child: renderButtonWithType());
  }

  Widget renderButtonWithType() {
    switch (typeBtn) {
      case Fruit.outline:
        return OutlinedButton(
            onPressed: onPressed,
            style: OutlinedButton.styleFrom(
                side: const BorderSide(color: AppColors.persianGreen),
                minimumSize: const Size.fromHeight(52),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16.0),
                )),
            child: Text(textButton,
                style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: AppColors.persianGreen)));
      case Fruit.text:
        return TextButton(
            onPressed: onPressed,
            style: const ButtonStyle(
              minimumSize: MaterialStatePropertyAll<Size>(Size.fromHeight(52)),
            ),
            child: Text(textButton,
                style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: AppColors.persianGreen)));
      case Fruit.icon:
        return ElevatedButton(
            onPressed: onPressed,
            style: OutlinedButton.styleFrom(
              backgroundColor: AppColors.persianGreen,
              shape: const CircleBorder(),
              padding: const EdgeInsets.all(10.0),
            ),
            child: const Icon(
              Icons.favorite,
              color: Colors.white,
              size: 32.0,
              semanticLabel: 'Text to announce in accessibility modes',
            ));
      default:
        return ElevatedButton(
            onPressed: onPressed,
            style: OutlinedButton.styleFrom(
                minimumSize: const Size.fromHeight(52),
                backgroundColor:
                    disabled ? AppColors.lightGray : AppColors.persianGreen,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16.0))),
            child: Text(textButton,
                style: disabled
                    ? const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        color: AppColors.spanishGray)
                    : const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        color: Colors.white)));
    }
  }

  const ButtonWidget({
    Key? key,
    required this.textButton,
    this.padding = const EdgeInsets.all(0),
    this.typeBtn = Fruit.fill,
    this.borderRadius,
    this.onPressed,
    this.disabled = false,
  }) : super(key: key);
}
