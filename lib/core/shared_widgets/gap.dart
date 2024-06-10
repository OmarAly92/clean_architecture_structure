import 'package:clean_architecture_structure/core/utils/app_constants.dart';
import 'package:flutter/material.dart';

class Gap extends StatelessWidget {
  const Gap({Key? key, this.gap}) : super(key: key);

  final double? gap;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: gap ?? AppConstants.gap,
      width: gap ?? AppConstants.gap,
    );
  }
}
