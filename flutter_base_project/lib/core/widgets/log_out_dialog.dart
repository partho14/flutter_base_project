import 'package:flutter/material.dart';
import 'package:flutter_base_project/core/colors/colors.dart';
import 'package:flutter_base_project/core/widgets/spacing.dart';
import 'package:flutter_base_project/features/common/presentation/ui/widgets/gradient_outline_button.dart';
import 'package:get/get.dart';

class LogOutDialogWidget extends StatefulWidget {
  const LogOutDialogWidget({super.key});

  @override
  State<LogOutDialogWidget> createState() => _LogOutDialogWidgetState();
}

class _LogOutDialogWidgetState extends State<LogOutDialogWidget> {
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
            const Icon(
              Icons.logout,
              color: Colors.red,
              size: 55,
            ),
            verticalSpacing(45),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text(
                "logOutFromYourAccount".tr,
                textAlign: TextAlign.center,
                style: const TextStyle(
                    color: AppColors.jetBlack,
                    fontSize: 16,
                    fontWeight: FontWeight.w700),
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
                        onPressed: () async {
                          Get.back();
                        },
                        child: Text("no".tr,
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge
                                ?.copyWith(color: AppColors.white)),
                      ),
                    ),
                  ),
                  horizontalSpacing(8),
                  Expanded(
                    child: SizedBox(
                      height: 40,
                      child: GradientOutlineButton(
                        onPressed: () async {

                        },
                        child: Text("yes".tr,
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge
                                ?.copyWith(color: AppColors.white)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            verticalSpacing(20),
          ],
        ),
      ),
    );
  }
}
