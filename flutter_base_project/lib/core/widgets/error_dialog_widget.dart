import 'package:flutter/material.dart';
import 'package:flutter_base_project/core/colors/colors.dart';

class ErrorDialogWidget extends StatefulWidget {
  final String title;
  final String message;
  final Widget button;
  final Widget icon;

  const ErrorDialogWidget({
    Key? key,
    required this.title,
    required this.message,
    required this.button,
    this.icon = const Icon(
      Icons.info,
      color: Colors.red,
      size: 64,
    ),
  }) : super(key: key);

  @override
  State<ErrorDialogWidget> createState() => _ErrorDialogWidgetState();
}

class _ErrorDialogWidgetState extends State<ErrorDialogWidget> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16)
      ),
      icon: widget.icon,
      title: Text(
        widget.title,
        style: const TextStyle(
            color: AppColors.jetBlack,
            fontSize: 16,
            fontWeight: FontWeight.w700),
      ),
      content: Text(
        widget.message,
        textAlign: TextAlign.center,
        style: const TextStyle(
            color: AppColors.jetBlack,
            fontSize: 14,
            fontWeight: FontWeight.w400,
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: widget.button,
        )
      ],
    );
  }
}
