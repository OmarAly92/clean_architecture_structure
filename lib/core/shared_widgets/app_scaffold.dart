import 'package:clean_architecture_structure/core/shared_widgets/custom_appbar.dart';
import 'package:clean_architecture_structure/core/utils/app_colors.dart';
import 'package:clean_architecture_structure/core/utils/app_constants.dart';
import 'package:flutter/material.dart';

class AppScaffold extends StatelessWidget {
  const AppScaffold({
    Key? key,
    required this.body,
    this.bottomNavigationBar,
    this.bottomSheet,
    this.drawer,
    this.endDrawer,
    this.floatingActionButton,
    this.padding,
  }) : super(key: key);

  final Widget body;
  final Widget? bottomNavigationBar;
  final Widget? bottomSheet;
  final Widget? drawer;
  final Widget? endDrawer;
  final Widget? floatingActionButton;
  final EdgeInsets? padding;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppbar(),
      backgroundColor: AppColors.scaffoldBackground,
      body: Padding(
        padding: padding ?? const EdgeInsets.all(AppConstants.scaffoldPadding16),
        child: body,
      ),
      bottomNavigationBar: bottomNavigationBar,
      bottomSheet: bottomSheet,
      drawer: drawer,
      floatingActionButton: floatingActionButton,
      endDrawer: endDrawer,
    );
  }
}
