import 'package:flutter/material.dart';
import 'package:flutter_base_project/core/colors/colors.dart';
import 'package:flutter_base_project/core/widgets/gradient_widget.dart';
import 'package:gradient_borders/gradient_borders.dart';

class GradientOutlineButton extends StatelessWidget {
  final BorderRadiusGeometry? borderRadius;
  final double? width;
  final double height;
  final Gradient? gradient;
  final VoidCallback? onPressed;
  final Widget child;

  const GradientOutlineButton({
    Key? key,
    required this.onPressed,
    required this.child,
    this.borderRadius,
    this.width,
    this.height = 44.0,
    this.gradient,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final borderRadius = this.borderRadius ?? BorderRadius.circular(8);
    return InkWell(
      onTap: onPressed,
      child: Container(
        width: width ?? 200,
        height: height,
        decoration: BoxDecoration(
            border: GradientBoxBorder(
              gradient: gradient ??
                  const LinearGradient(
                    colors: [
                      AppColors.gradiantColorTop,
                      AppColors.gradiantColorBottom,
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
              width: 1.5,
            ),
            borderRadius: borderRadius),
        alignment: Alignment.center,
        child: GradientWidget(child: child),
      ),
    );
  }
}
