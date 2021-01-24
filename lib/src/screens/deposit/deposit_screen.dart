import 'package:atm_app_flutter/src/assets/app_widget_size.dart';
import 'package:atm_app_flutter/src/constants/app_text_constants.dart';
import 'package:atm_app_flutter/src/constants/screen_routes.dart';
import 'package:atm_app_flutter/src/data/store/app_store.dart';
import 'package:atm_app_flutter/src/data/validator/input_validator.dart';
import 'package:atm_app_flutter/src/widget/common_appbar_widget.dart';
import 'package:flutter/material.dart';

class DepositScreen extends StatefulWidget {
  DepositScreen({Key key}) : super(key: key);

  @override
  _DepositScreenState createState() => _DepositScreenState();
}

class _DepositScreenState extends State<DepositScreen> {
  bool moneyView = true;
  Map selectedMeneyItem;
  TextEditingController _depositInputController = TextEditingController();
  List moneyList = [
    {
      'amount': [
        {'value': 10, 'count': 8},
        {'value': 5, 'count': 20},
      ]
    },
    {
      'amount': [
        {'value': 20, 'count': 3},
        {'value': 5, 'count': 18},
        {'value': 1, 'count': 4},
      ]
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppbarWidget(
        AppTextConstants.DEPOSIT,
        context,
      ),
      body: Padding(
        padding: EdgeInsets.all(
          AppWidgetSize.bodyPadding,
        ),
        child: moneyView ? _buildMoneyView() : _buildMoneyInputView(),
      ),
    );
  }

  _onMoneyButtonTapped(moneyItem) {
    selectedMeneyItem = moneyItem;
    setState(() {
      moneyView = false;
    });
  }

  _buildMoneyView() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: EdgeInsets.only(bottom: AppWidgetSize.bodyPadding),
          child: Text(
            AppTextConstants.DEPOSIT_INSTRUCT,
            style: Theme.of(context).textTheme.headline3,
          ),
        ),
        ...List.generate(moneyList.length, (moneyIndex) {
          Map moneyItem = moneyList[moneyIndex];
          return InkWell(
            onTap: () => _onMoneyButtonTapped(moneyItem),
            child: Card(
                margin: EdgeInsets.only(top: AppWidgetSize.dimen_20),
                elevation: 3,
                child: Padding(
                  padding: EdgeInsets.all(AppWidgetSize.dimen_20),
                  child: Wrap(
                    children:
                        List.generate(moneyItem['amount'].length, (index) {
                      Map countItem = moneyItem['amount'][index];
                      return Text(
                        (index == 0 ? '' : ', ') +
                            countItem['value'].toString() +
                            's' +
                            ' = ' +
                            countItem['count'].toString(),
                        style: Theme.of(context).primaryTextTheme.headline3,
                      );
                    }).toList(),
                  ),
                )),
          );
        }).toList()
      ],
    );
  }

  _continueButtonPressed() {
    if (_depositInputController.text != '') {
      int totalAmount = selectedMeneyItem['amount']
          .fold(0, (t, e) => t + (e['value'] * e['count']));
      if (int.parse(_depositInputController.text) == 0) {
        Map arguments = {
          'status': false,
          'msg': AppTextConstants.DEPOSIT_ZERO_ERROR,
        };
        Navigator.of(context)
            .pushReplacementNamed(ScreenRoutes.STATUS, arguments: arguments);
      }
      if (int.parse(_depositInputController.text) != totalAmount) {
        Map arguments = {
          'status': false,
          'msg': AppTextConstants.DEPOSIT_INCORRECT_ERROR,
        };
        Navigator.of(context)
            .pushReplacementNamed(ScreenRoutes.STATUS, arguments: arguments);
      } else {
        Map amountDetails = AppStore().getAmount();
        int existingAmount = amountDetails['total'];
        existingAmount = existingAmount + totalAmount;
        amountDetails['total'] = existingAmount;
        selectedMeneyItem['amount'].forEach((item) {
          String key = item['value'].toString();
          amountDetails['list'][key] =
              amountDetails['list'][key] + item['count'];

          return item;
        });
        String overallAsset = '';
        amountDetails['list'].keys.forEach((key) {
          overallAsset =
              (overallAsset == '' ? overallAsset : overallAsset + ', ') +
                  (key + 's=' + amountDetails['list'][key].toString());
        });

        AppStore().setAmount(amountDetails);
        Map arguments = {
          'status': true,
          'msg': 'You amount deposited. Balance: ' +
              overallAsset +
              ' , Total = ' +
              existingAmount.toString(),
        };
        Navigator.of(context)
            .pushReplacementNamed(ScreenRoutes.STATUS, arguments: arguments);
      }
    }
  }

  _buildMoneyInputView() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: EdgeInsets.only(bottom: AppWidgetSize.bodyPadding),
          child: Text(
            AppTextConstants.DEPOSIT_AMOUNT,
            style: Theme.of(context).textTheme.headline3,
          ),
        ),
        TextField(
          textAlign: TextAlign.center,
          autofocus: true,
          controller: _depositInputController,
          decoration: new InputDecoration(
            border: InputBorder.none,
          ),
          inputFormatters: InputValidator.numberonly,
          keyboardType: TextInputType.number,
          style: Theme.of(context)
              .accentTextTheme
              .headline1
              .copyWith(fontSize: AppWidgetSize.dimen_40),
        ),
        Spacer(),
        RaisedButton(
          onPressed: _continueButtonPressed,
          child: Text(
            AppTextConstants.CONTINUE,
            style: Theme.of(context).accentTextTheme.subtitle1,
          ),
        )
      ],
    );
  }
}
