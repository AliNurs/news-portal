
import 'package:flutter/material.dart';
import 'package:megalab/config/theme/app_text_styles.dart';

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
            activeColor: Colors.deepPurple,
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