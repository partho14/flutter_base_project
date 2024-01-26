import 'package:flutter/material.dart';
import 'package:flutter_base_project/application/assets_path.dart';
import 'package:flutter_base_project/core/colors/colors.dart';
import 'package:flutter_base_project/core/widgets/spacing.dart';
import 'package:flutter_base_project/core/widgets/svg_builder.dart';

class SomethingWentWrongScreen extends StatefulWidget {
  const SomethingWentWrongScreen({super.key});

  @override
  State<SomethingWentWrongScreen> createState() => _SomethingWentWrongScreenState();
}

class _SomethingWentWrongScreenState extends State<SomethingWentWrongScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SvgBuilder(path: AssetsPath.somethingWentWrong,width: 250,),
            verticalSpacing(10),
            const Text("Whoops!",style: TextStyle(fontSize: 40,color: AppColors.customGray,fontWeight: FontWeight.w500),),
            verticalSpacing(12),
            const Text("Something went wrong.",style: TextStyle(fontSize: 18,color: AppColors.black),),
            verticalSpacing(32),
          ],
        ),
      ),
    );
  }
}
