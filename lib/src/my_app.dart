import 'package:atm_app_flutter/src/assets/theme/light_theme.dart';
import 'package:atm_app_flutter/src/constants/screen_routes.dart';
import 'package:atm_app_flutter/src/screens/cash_withdraw/cash_withdraw.dart';
import 'package:atm_app_flutter/src/screens/deposit/deposit_screen.dart';
import 'package:atm_app_flutter/src/screens/options/options_screen.dart';
import 'package:atm_app_flutter/src/screens/status/status_screen.dart';
import 'package:atm_app_flutter/src/screens/welcome/welcome_screen.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: ScreenRoutes.WELCOME,
      theme: lightTheme(),
      onGenerateRoute: generateRoute,
    );
  }

  Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case ScreenRoutes.WELCOME:
        return MaterialPageRoute<dynamic>(
          settings: const RouteSettings(name: ScreenRoutes.WELCOME),
          builder: (BuildContext context) {
            return WelcomeScreen();
          },
        );
        break;
      case ScreenRoutes.OPTIONS:
        return MaterialPageRoute<dynamic>(
          settings: const RouteSettings(name: ScreenRoutes.OPTIONS),
          builder: (BuildContext context) {
            return OptionsScreen();
          },
        );
        break;
      case ScreenRoutes.DEPOSIT:
        return MaterialPageRoute<dynamic>(
          settings: const RouteSettings(name: ScreenRoutes.CASH_WITHDRAW),
          builder: (BuildContext context) {
            return DepositScreen();
          },
        );
        break;
      case ScreenRoutes.CASH_WITHDRAW:
        return MaterialPageRoute<dynamic>(
          settings: const RouteSettings(name: ScreenRoutes.CASH_WITHDRAW),
          builder: (BuildContext context) {
            return CashWithdraw();
          },
        );
        break;
      case ScreenRoutes.STATUS:
        return MaterialPageRoute<dynamic>(
          settings: const RouteSettings(name: ScreenRoutes.CASH_WITHDRAW),
          builder: (BuildContext context) {
            return StatusScreen(
              arguments: settings.arguments,
            );
          },
        );
        break;
      default:
        return MaterialPageRoute<dynamic>(
          settings: const RouteSettings(name: ScreenRoutes.WELCOME),
          builder: (BuildContext context) {
            return WelcomeScreen();
          },
        );
        break;
    }
  }
}
