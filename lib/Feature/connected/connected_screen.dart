import 'package:flutter/material.dart';

import '../../core/utils/app_colors.dart';

class ConnectedScreen extends StatelessWidget {
  const ConnectedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child:
            Text("ConnectedScreen", style: TextStyle(color: AppColors.wihte)),
      ),
    );
  }
}
