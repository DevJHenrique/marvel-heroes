import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:marvel_heroes/src/modules/theme/gradients_colors.dart';
import 'package:marvel_heroes/src/modules/theme/theme_colors.dart';

import 'grandient_icon.dart';

PreferredSizeWidget customAppBar(BuildContext context) {
  return AppBar(
    leading: GestureDetector(
      onTap: () {},
      child: SizedBox(
        height: 24,
        width: 24,
        child: Align(
          child: SvgPicture.asset(
            'assets/icons/menu.svg',
            color: kColorDark,
          ),
        ),
      ),
    ),
    centerTitle: true,
    elevation: 0,
    backgroundColor: Colors.transparent,
    title: GradientIcon(
      SvgPicture.asset(
        'assets/icons/marvel.svg',
        color: Colors.white,
      ),
      26.0,
      kGradientRed,
    ),
    actions: [
      Padding(
        padding: const EdgeInsets.only(right: 24),
        child: GestureDetector(
          child: SizedBox(
            height: 24,
            width: 24,
            child: Align(
              child: SvgPicture.asset(
                'assets/icons/search.svg',
                color: kColorDark,
              ),
            ),
          ),
          onTap: () {},
        ),
      ),
    ],
  );
}
