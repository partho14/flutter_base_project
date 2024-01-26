import 'package:flutter/material.dart';
import 'package:flutter_base_project/application/assets_path.dart';
import 'package:flutter_base_project/core/colors/colors.dart';
import 'package:flutter_base_project/core/widgets/spacing.dart';
import 'package:flutter_base_project/core/widgets/svg_builder.dart';
import 'package:flutter_base_project/features/common/presentation/ui/widgets/gradient_outline_button.dart';
import 'package:get/get.dart';

class CustomDialogWidget extends StatefulWidget {
  const CustomDialogWidget({super.key});

  @override
  State<CustomDialogWidget> createState() => _CustomDialogWidgetState();
}

class _CustomDialogWidgetState extends State<CustomDialogWidget> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        width: 336,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            verticalSpacing(80),
            const SvgBuilder(path: AssetsPath.doneIconSvg),
            verticalSpacing(45),
            Text(
              "congratulations".tr,
              style: const TextStyle(
                  color: AppColors.jetBlack,
                  fontSize: 16,
                  fontWeight: FontWeight.w700),
            ),
            verticalSpacing(25),
            Text(
              "yourFormHasBeenSubmitted".tr,
              style: const TextStyle(
                  color: AppColors.customGray,
                  fontSize: 12,
                  fontWeight: FontWeight.w500),
            ),
            verticalSpacing(25),
            SizedBox(
              height: 36,
              width: 140,
              child: GradientOutlineButton(
                onPressed: () {
                  Get.back();
                  Get.back();
                  Get.back();
                },
                child: Text("done".tr,
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge
                        ?.copyWith(color: AppColors.white)),
              ),
            ),
            verticalSpacing(30),
          ],
        ),
      ),
    );
  }
}
