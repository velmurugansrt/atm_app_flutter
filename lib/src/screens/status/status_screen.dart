import 'package:atm_app_flutter/src/assets/app_colors.dart';
import 'package:atm_app_flutter/src/assets/app_widget_size.dart';
import 'package:atm_app_flutter/src/constants/app_text_constants.dart';
import 'package:atm_app_flutter/src/constants/screen_routes.dart';
import 'package:flutter/material.dart';

class StatusScreen extends StatefulWidget {
  Map arguments;
  StatusScreen({Key key, this.arguments}) : super(key: key);

  @override
  _StatusScreenState createState() => _StatusScreenState();
}

class _StatusScreenState extends State<StatusScreen> {
  @override
  Widget build(BuildContext context) {
    Map arguments = widget.arguments;
    print('arguments $arguments');
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(AppWidgetSize.bodyPadding),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                arguments['status']
                    ? AppTextConstants.TRANSACTION_SUCCESS
                    : AppTextConstants.TRANSACTION_FAILED,
                style: Theme.of(context).textTheme.headline1.copyWith(
                      color: arguments['status']?AppColors.postiveColor:AppColors.negativeColor,
                      fontSize: AppWidgetSize.dimen_24,
                    ),
              ),
              Padding(
                padding: EdgeInsets.all(AppWidgetSize.dimen_30),
                child: Text(
                  arguments['msg'],
                  style: Theme.of(context).textTheme.headline5,
                  textAlign: TextAlign.center,
                ),
              ),
              RaisedButton(
                onPressed: () => Navigator.of(context).pushNamedAndRemoveUntil(
                    ScreenRoutes.OPTIONS, (Route<dynamic> route) => false),
                child: Text(
                  AppTextConstants.GO_TO_MENU,
                  style: Theme.of(context).accentTextTheme.subtitle2,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
