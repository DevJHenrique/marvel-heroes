import 'package:flutter/material.dart';

import '../../theme/gradients_colors.dart';
import '../../theme/text_style_theme.dart';
import '../../theme/theme_colors.dart';

class CharacterCard extends StatelessWidget {
  const CharacterCard(
      {Key? key,
      required this.cardSubtitle,
      required this.cardTitle,
      required this.imagePath})
      : super(key: key);

  final String cardSubtitle;
  final String cardTitle;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      width: 140,
      height: 230,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          boxShadow: const [
            BoxShadow(
                blurRadius: 20.0,
                offset: Offset(0, 20.0),
                color: kColorShadowPoster),
          ],
          image: DecorationImage(
            image: AssetImage(imagePath),
            fit: BoxFit.cover,
            isAntiAlias: true,
          )),
      child: Container(
        padding: const EdgeInsets.all(8.0),
        decoration: const BoxDecoration(
          gradient: kGradientDark,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              cardSubtitle,
              style: kCardSubtitle.copyWith(
                color: Colors.white,
              ),
            ),
            Text(
              cardTitle,
              style: kCardTitle.copyWith(
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
