import 'package:flutter/material.dart';
import 'package:flutter_base_project/core/colors/colors.dart';
import 'package:flutter_base_project/core/widgets/spacing.dart';
import 'package:flutter_base_project/features/common/presentation/ui/widgets/gradient_outline_button.dart';
import 'package:get/get.dart';

class ConfirmationDialogWidget extends StatefulWidget {
  final Function onTapYes;
  final String title;
  final Widget icon;

  const ConfirmationDialogWidget({
    Key? key,
    required this.onTapYes,
    required this.title,
    this.icon = const Icon(
      Icons.remove_circle_outline,
      color: Colors.red,
      size: 55,
    ),
  }) : super(key: key);

  @override
  State<ConfirmationDialogWidget> createState() =>
      _ConfirmationDialogWidgetState();
}

class _ConfirmationDialogWidgetState extends State<ConfirmationDialogWidget> {
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
            verticalSpacing(28),
            widget.icon,
            verticalSpacing(20),
            Padding(
              padding: const EdgeInsets.only(left: 14, right: 14),
              child: Center(
                child: Text(
                  widget.title.tr,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: AppColors.jetBlack,
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
            verticalSpacing(20),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: SizedBox(
                      height: 40,
                      child: GradientOutlineButton(
                        onPressed: () {
                          Get.back();
                        },
                        child: Text(
                          'no'.tr,
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge
                              ?.copyWith(color: AppColors.white),
                        ),
                      ),
                    ),
                  ),
                  horizontalSpacing(8),
                  Expanded(
                    child: SizedBox(
                      height: 40,
                      child: GradientOutlineButton(
                        onPressed: () {
                           widget.onTapYes();
                           Get.back();
                        },
                        child: Text(
                          "yes".tr,
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge
                              ?.copyWith(color: AppColors.white),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
