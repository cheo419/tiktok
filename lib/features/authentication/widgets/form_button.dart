import 'package:flutter/material.dart';

import '../../../constants/sizes.dart';

class FormButton extends StatelessWidget {
  const FormButton({
    super.key,
    required this.disabled,
    this.text = 'Next',
  });

  final bool disabled;
  final String text;

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      widthFactor: 1,
      child: AnimatedContainer(
        padding: const EdgeInsets.symmetric(
          vertical: Sizes.size16,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(Sizes.size5),
          color:
              disabled ? Colors.grey.shade300 : Theme.of(context).primaryColor,
        ),
        duration: const Duration(milliseconds: 600),
        child: AnimatedDefaultTextStyle(
          duration: const Duration(milliseconds: 600),
          style: TextStyle(
            color: disabled ? Colors.grey.shade400 : Colors.white,
            fontWeight: FontWeight.w600,
          ),
          child: Text(
            text,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
