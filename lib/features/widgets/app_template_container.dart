import 'package:flutter/material.dart';
import 'package:megalab/utils/extension/extension.dart';

class AppTemplateContainer extends StatelessWidget {
  const AppTemplateContainer({
    Key? key,
    required this.child,
    required this.size,
  }) : super(key: key);
  final Widget child;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Align(
        alignment: Alignment.center,
        child: Container(
          width: size.width * 0.85,
          padding: const EdgeInsets.symmetric(
            horizontal: 26,
            vertical: 24,
          ),
          decoration: BoxDecoration(
            boxShadow: const [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 8,
                spreadRadius: 5,
                offset: Offset(3, 5),
              ),
            ],
            color: context.colors.textWhiteFFFFFF,
            borderRadius: BorderRadius.circular(20),
          ),
          child: SingleChildScrollView(
            child: child,
          ),
        ),
      ),
    );
  }
}
