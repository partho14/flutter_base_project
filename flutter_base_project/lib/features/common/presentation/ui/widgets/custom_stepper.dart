import 'package:flutter/material.dart';
import 'package:flutter_base_project/core/colors/colors.dart';
import 'package:flutter_base_project/core/widgets/spacing.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

class CustomStepper extends StatefulWidget {
  CustomStepper({
    super.key,
    required this.lowerLimit,
    required this.upperLimit,
    required this.stepValue,
    required this.value,
    required this.onChange,
  });

  final int lowerLimit;
  final int upperLimit;
  final int stepValue;
  int value;
  final Function(int) onChange;

  @override
  State<CustomStepper> createState() => _CustomStepperState();
}

class _CustomStepperState extends State<CustomStepper> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        InkWell(
          onTap: () {
            widget.value = widget.value == widget.lowerLimit
                ? widget.lowerLimit
                : widget.value -= widget.stepValue;
            widget.onChange(widget.value);
            setState(() {});
          },
          child: const Icon(
            Icons.remove,
            color: AppColors.themeColor,
            size: 20,
          ),
        ),
        horizontalSpacing(8),
        Expanded(
          child: Container(
            height: 24,
            width: 50,
            decoration: BoxDecoration(
                border: const GradientBoxBorder(
                  gradient: LinearGradient(
                    colors: [
                      AppColors.gradiantColorTop,
                      AppColors.gradiantColorBottom,
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  width: 1.5,
                ),
                borderRadius: BorderRadius.circular(8)),
            child: Center(
              child: Text(
                '${widget.value}',
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: Colors.black, fontWeight: FontWeight.w500),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
        horizontalSpacing(8),
        InkWell(
          onTap: () {
            widget.value = widget.value == widget.upperLimit
                ? widget.upperLimit
                : widget.value += widget.stepValue;
            widget.onChange(widget.value);
            setState(() {});
          },
          child: const Icon(
            Icons.add,
            color: AppColors.themeColor,
            size: 20,
          ),
        ),
      ],
    );
  }
}
