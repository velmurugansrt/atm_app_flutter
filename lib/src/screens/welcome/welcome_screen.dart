import 'package:atm_app_flutter/src/assets/app_colors.dart';
import 'package:atm_app_flutter/src/assets/app_images.dart';
import 'package:atm_app_flutter/src/assets/app_widget_size.dart';
import 'package:atm_app_flutter/src/constants/app_text_constants.dart';
import 'package:atm_app_flutter/src/constants/screen_routes.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  WelcomeScreen({Key key}) : super(key: key);

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  _onStartPressed() {
    Navigator.of(context).pushReplacementNamed(ScreenRoutes.OPTIONS);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: AppWidgetSize.dimen_120),
        width: double.infinity,
        height: double.infinity,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // alignment: WrapAlignment.center,
            children: [
              Text(
                AppTextConstants.WELCOME_TEXT,
                style: Theme.of(context).accentTextTheme.headline2.copyWith(
                      fontSize: AppWidgetSize.dimen_40,
                    ),
              ),
              Container(
                width: AppWidgetSize.dimen_180,
                padding: EdgeInsets.only(top: AppWidgetSize.dimen_10),
                child: RaisedButton(
                  onPressed: _onStartPressed,
                  child: Text(
                    AppTextConstants.START,
                    style: Theme.of(context).accentTextTheme.overline,
                  ),
                ),
              )
            ],
          ),
        ),
        decoration: new BoxDecoration(
          color: AppColors.darkColor,
          image: new DecorationImage(
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              AppColors.darkColor.withOpacity(0.8),
              BlendMode.dstATop,
            ),
            image: AppImages.welcomeBankBG.image,
          ),
        ),
      ),

      // SizedBox(
      //   width: double.infinity,
      //   height: double.infinity,
      //   child: AppImages.welcomeBankBG,
      // ),
    );
  }
}
