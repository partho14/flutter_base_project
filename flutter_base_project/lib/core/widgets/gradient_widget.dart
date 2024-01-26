import 'package:flutter/material.dart';
import 'package:flutter_base_project/core/colors/colors.dart';

class GradientWidget extends StatelessWidget {
  final Alignment begin;
  final Alignment end;
  final List<Color>? colors;
  final Widget child;

  const GradientWidget({
    Key? key,
    this.begin = Alignment.topLeft,
    this.end = Alignment.bottomRight,
    this.colors,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      blendMode: BlendMode.srcIn,
      shaderCallback: (rect) => LinearGradient(
        colors: colors ??
            const [
              AppColors.gradiantColorTop,
              AppColors.gradiantColorBottom,
            ],
        begin: begin,
        end: end,
      ).createShader(rect),
      child: child,
    );
  }
}
