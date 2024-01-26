import 'package:flutter/material.dart';
import 'package:flutter_base_project/core/widgets/spacing.dart';
import 'package:get/get.dart';
import 'package:flutter_base_project/application/assets_path.dart';

class NoResultsView extends StatelessWidget {
  const NoResultsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            AssetsPath.noResultsIconPng,
            width: 60,
            height: 60,
          ),
          verticalSpacing(16),
          Text(
            'emptyList'.tr,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ],
      ),
    );
  }
}
