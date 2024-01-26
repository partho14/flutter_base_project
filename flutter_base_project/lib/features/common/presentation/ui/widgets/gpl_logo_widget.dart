import 'package:flutter/material.dart';
import 'package:flutter_base_project/application/assets_path.dart';
import 'package:flutter_base_project/core/colors/colors.dart';
import 'package:flutter_base_project/core/widgets/svg_builder.dart';

class GplLogoWidget extends StatelessWidget {
  final double height;
  final double width;

  const GplLogoWidget({Key? key, this.height = 80, this.width = 80})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SvgBuilder(
      path: AssetsPath.gplLogoSvg,
      color: AppColors.themeColor,
    );
  }
}
