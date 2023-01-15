import 'package:flutter/material.dart';
import 'package:megalab/config/l10n/generated/l10n.dart';
import 'package:megalab/config/theme/app_text_styles.dart';

class FavoriteNewsWidget extends StatelessWidget {
  const FavoriteNewsWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      contentPadding: const EdgeInsets.symmetric(
        vertical: 8,
      ),
      insetPadding: const EdgeInsets.symmetric(
        horizontal: 98,
      ),
      content: TextButton(
        onPressed: () {},
        child: Text(
          Language.of(context).selectedNews,
          style: AppTextStyles.w400size16.copyWith(
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
