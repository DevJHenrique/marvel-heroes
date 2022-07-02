import 'package:flutter/material.dart';

class CharacterTypeIcon extends StatelessWidget {
  const CharacterTypeIcon(
      {Key? key, required this.icon, required this.gradient, this.onTap})
      : super(key: key);

  final Widget icon;
  final Gradient gradient;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    const double kIconSize = 32;
    const double kSize = 56;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: kSize,
        height: kSize,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          gradient: gradient,
        ),
        child: Align(
          alignment: Alignment.center,
          child: SizedBox(
            height: kIconSize,
            width: kIconSize,
            child: icon,
          ),
        ),
      ),
    );
  }
}
