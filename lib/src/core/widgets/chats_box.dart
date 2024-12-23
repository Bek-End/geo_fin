import 'package:flutter/material.dart';

import '../constants/app_colors.dart';

class ChatsBox extends StatelessWidget {
  const ChatsBox({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(16, 16, 16, 0),
      decoration: BoxDecoration(
        color: AppColors.dark21,
        borderRadius: BorderRadius.vertical(top: Radius.circular(8)),
      ),
      child: child,
    );
  }
}
