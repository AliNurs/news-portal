import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:megalab/config/l10n/generated/l10n.dart';
import 'package:megalab/config/theme/app_text_styles.dart';
import 'package:megalab/core/routes/app_router.dart';
import 'package:megalab/utils/extension/extension.dart';

class MyProfileWidget extends StatelessWidget {
  const MyProfileWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      contentPadding: const EdgeInsets.symmetric(horizontal: 12),
      insetPadding: const EdgeInsets.symmetric(
        horizontal: 98,
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextButton(
            style: TextButton.styleFrom(
              alignment: Alignment.bottomLeft,
              padding: EdgeInsets.zero,
            ),
            onPressed: () {
              context.router.push(const PersonalScreenRoute());
            },
            child: Text(
              Language.of(context).myProfile,
              textAlign: TextAlign.start,
              style: AppTextStyles.w400size16.copyWith(
                color: context.colors.textBlack000000,
              ),
            ),
          ),
          const Divider(
            thickness: 1.5,
          ),
          TextButton(
            style: TextButton.styleFrom(
              alignment: Alignment.topLeft,
              padding: EdgeInsets.zero,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text(
              Language.of(context).goOut,
              style: AppTextStyles.w400size16.copyWith(
                color: context.colors.textBlack000000,
              ),
              textAlign: TextAlign.start,
            ),
          ),
        ],
      ),
    );
  }
}
