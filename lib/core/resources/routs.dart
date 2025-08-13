import 'package:flutter/material.dart';
import '../../features/home/presentation/view/home_screen.dart';
import '../../features/select_country/presentation/view/select_country_screen.dart';
import '../../features/location_permission/location_permission_screen.dart';
import '../widgets/round_button_fill.dart';
import 'app_them_data.dart';
import 'responive.dart';

class AppRouts {
  static const String locationPermission = "/";
  static const String selectCountry = "/selectCountry";
  static const String homeScreen = "/HomeScreen";
}

Route<dynamic>? onGenerateRoute(RouteSettings settings) {
  final routes = <String, Widget>{
    AppRouts.locationPermission: const LocationPermissionScreen(),
    AppRouts.selectCountry: const SelectCountryScreen(),
    AppRouts.homeScreen: const HomeScreen(),
    // AppRouts.introScreen: BlocProvider.value(
    //   value: instanceGetIt.get<AppCubit>(),
    //   child: const IntroScreen(),
    //   //  ,
    // ),
  };

  final builder = routes[settings.name];
  if (builder != null) {
    return animationRout(builder);
  }

  // Default route if no match is found
  return animationRout(const PageNotFound());
}

PageRouteBuilder<dynamic> animationRout(Widget screen) {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => screen,
    transitionDuration: const Duration(milliseconds: 300),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return SlideTransition(
        position: animation.drive(
          Tween<Offset>(begin: const Offset(1.0, 0.0), end: Offset.zero),
        ),
        child: FadeTransition(opacity: animation, child: child),
      );
    },
  );
}

class PageNotFound extends StatelessWidget {
  const PageNotFound({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image(
              image: const AssetImage("assets/icons/no_results_page.png"),
              height: Responsive.width(30, context),
              width: Responsive.width(30, context),
            ),
            const SizedBox(height: 36),
            Text(
              "الصفحة غير موجودة",
              textAlign: TextAlign.center,
              style: theme.textTheme.headlineLarge,
            ),
            const SizedBox(height: 36),
            RoundedButtonFill(
              title: "رجوع",
              color: AppThemData.primaryColor,
              textColor: AppThemData.white,
              fontFamily: AppThemData.bold,
              onPress: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
