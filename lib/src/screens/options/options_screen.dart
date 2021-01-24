import 'package:atm_app_flutter/src/assets/app_widget_size.dart';
import 'package:atm_app_flutter/src/constants/app_text_constants.dart';
import 'package:atm_app_flutter/src/widget/common_appbar_widget.dart';
import 'package:flutter/material.dart';

class OptionsScreen extends StatefulWidget {
  OptionsScreen({Key key}) : super(key: key);

  @override
  _OptionsScreenState createState() => _OptionsScreenState();
}

class _OptionsScreenState extends State<OptionsScreen> {
  List<Map> menuOptions = [
    {'label': AppTextConstants.CASH_WITHDRAW, 'color': Colors.green},
    {'label': AppTextConstants.DEPOSIT, 'color': Colors.purple},
    {'label': AppTextConstants.STATEMENT, 'color': Colors.blue},
    {'label': AppTextConstants.ACCOUNT_SETTINGS, 'color': Colors.orange},
    {'label': AppTextConstants.OTHERS, 'color': Colors.grey},
    {'label': AppTextConstants.EXIT, 'color': Colors.red},
  ];
  void _menuButtonPressed(name) {
    Navigator.of(context).pushNamed(name);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppbarWidget(
        AppTextConstants.MENU,
        context,
      ),
      body: Padding(
        padding: EdgeInsets.only(top: AppWidgetSize.dimen_20),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 1.2,
          ),
          itemCount: menuOptions.length,
          itemBuilder: (BuildContext gct, int index) {
            Map item = menuOptions[index];
            return InkWell(
              onTap: () => _menuButtonPressed(item['label']),
              child: Card(
                color: item['color'],
                semanticContainer: true,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Container(
                  height: AppWidgetSize.dimen_60,
                  child: Center(
                    child: Text(
                      item['label'],
                      style: Theme.of(context).accentTextTheme.subtitle2,
                    ),
                  ),
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                elevation: 5,
                margin: EdgeInsets.all(10),
              ),
            );
          },
        ),
      ),
    );
  }
}
