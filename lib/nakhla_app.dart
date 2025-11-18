import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nakhla/core/routing/app_router.dart';
import 'package:nakhla/core/routing/routes.dart';
import 'package:nakhla/core/theming/colors.dart';

class Nakhla extends StatelessWidget {
  final AppRouter appRouter;

  const Nakhla({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: MaterialApp(
        title: 'Nakhla',
        theme: ThemeData(
          primaryColor: ColorsManager.primaryLightGreen,
          scaffoldBackgroundColor: Colors.white,
        ),
        debugShowCheckedModeBanner: false,
        initialRoute: Routes.homeScreen,
        onGenerateRoute: appRouter.generateRoute,
      ),
    );
  }
}
