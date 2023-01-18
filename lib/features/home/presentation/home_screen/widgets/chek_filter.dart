// import 'package:flutter/material.dart';
// import 'package:megalab/config/theme/app_text_styles.dart';
part of 'filter_dialog.dart';

class ChekFilter extends StatelessWidget {
  const ChekFilter({
    Key? key,
    required this.text,
    required this.isSelected,
  }) : super(key: key);
  final String text;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 36,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Checkbox(
            activeColor: context.colors.buttonLogo7E5BC2,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            ),
            value: isSelected,
            onChanged: (v) {},
          ),
          Expanded(
            child: Text(
              text,
              style: AppTextStyles.w400size16,
            ),
          ),
        ],
      ),
    );
  }
}
