import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:megalab/config/l10n/generated/l10n.dart';
import 'package:megalab/config/theme/app_text_styles.dart';
import 'package:megalab/core/resources/resources.dart';
import 'package:megalab/utils/extension/extension.dart';

part 'chek_filter.dart';

class FilterDialog extends StatelessWidget {
  const FilterDialog({
    Key? key,
    required this.isMainScreen,
  }) : super(key: key);
  final bool isMainScreen;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      alignment: isMainScreen ? Alignment.bottomRight : Alignment.bottomLeft,
      onPressed: () {
        return isMainScreen
            ? showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                        horizontal: 12, vertical: 18),
                    title: Text(
                      Language.of(context).filtration,
                      style: AppTextStyles.w500size18,
                    ),
                    content: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        ChekFilter(
                          isSelected: true,
                          text: Language.of(context).sport,
                        ),
                        ChekFilter(
                          isSelected: false,
                          text: Language.of(context).politics,
                        ),
                        ChekFilter(
                          isSelected: false,
                          text: Language.of(context).stars,
                        ),
                        ChekFilter(
                          isSelected: true,
                          text: Language.of(context).art,
                        ),
                        ChekFilter(
                          isSelected: true,
                          text: Language.of(context).fashion,
                        ),
                      ],
                    ),
                    actionsPadding: const EdgeInsets.only(bottom: 26),
                    actionsAlignment: MainAxisAlignment.center,
                    actions: [
                      SizedBox(
                        height: 32,
                        width: 180,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(13),
                              ),
                              backgroundColor: context.colors.buttonLogo7E5BC2),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text(
                            Language.of(context).apply,
                            style: AppTextStyles.w500size16,
                          ),
                        ),
                      )
                    ],
                  );
                }).toString()
            : Navigator.pop(context);
      },
      icon: isMainScreen
          ? SvgPicture.asset(
              AppSvgs.filter,
              width: 108,
              height: 24,
              color: context.colors.textBlack000000,
            )
          : Row(
              children: [
                const SizedBox(width: 6),
                SvgPicture.asset(
                  AppSvgs.arrowLeft,
                ),
              ],
            ),
    );
  }
}
