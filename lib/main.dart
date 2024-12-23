import 'package:flutter/material.dart';
import 'package:toastification/toastification.dart';

import 'src/core/constants/app_colors.dart';
import 'src/core/router/app_router.dart';

void main() {
  runApp(const MyApp());
}

final _appRouter = AppRouter();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ToastificationWrapper(
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        routerConfig: _appRouter.config(),
        theme: ThemeData(
          useMaterial3: true,
          fontFamily: 'Ubuntu',
          scaffoldBackgroundColor: AppColors.whiteD9,
          filledButtonTheme: FilledButtonThemeData(
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.darkRed,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
