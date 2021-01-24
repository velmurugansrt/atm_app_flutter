import 'package:atm_app_flutter/src/assets/app_widget_size.dart';
import 'package:atm_app_flutter/src/constants/app_text_constants.dart';
import 'package:atm_app_flutter/src/constants/screen_routes.dart';
import 'package:atm_app_flutter/src/data/store/app_store.dart';
import 'package:atm_app_flutter/src/widget/common_appbar_widget.dart';
import 'package:flutter/material.dart';

class CashWithdraw extends StatefulWidget {
  CashWithdraw({Key key}) : super(key: key);

  @override
  _CashWithdrawState createState() => _CashWithdrawState();
}

class _CashWithdrawState extends State<CashWithdraw> {
  List withDrawList = [75, 122, 63, 253, 0, -25];
  void _withdrawButtonPressed(withdrawAmount) {
    Map amountDetails = AppStore().getAmount();

    Map arguments = {
      'status': false,
      'msg': '',
    };

    List withDrawAssetList = [];
    if (withdrawAmount > 0 && amountDetails['total'] > withdrawAmount) {
      int balanceAmount = withdrawAmount;

      amountDetails['list'].keys.forEach((key) {
        if (balanceAmount > 0) {
          int value = amountDetails['list'][key];
          int keyInt = int.parse(key);
          int moneyCount = (balanceAmount / keyInt).floor();
          if (keyInt == 1 && value == 0) {
            arguments['msg'] = AppTextConstants.WITHDRAW_DISPENSABLE_ERROR;
          } else if (moneyCount <= value) {
            if (moneyCount != 0) {
              balanceAmount = balanceAmount - (moneyCount * keyInt);

              amountDetails['list'][key] =
                  amountDetails['list'][key] - moneyCount;
              withDrawAssetList.add({'amount': keyInt, 'count': moneyCount});
            }
          } else {
            if (value != 0) {
              amountDetails['list'][key] = amountDetails['list'][key] - value;
              balanceAmount = balanceAmount - (value * keyInt);
              withDrawAssetList.add({'amount': keyInt, 'count': value});
            }
          }
        }
      });
      if (balanceAmount == 0) {
        amountDetails['total'] = amountDetails['total'] - withdrawAmount;
        String overallAsset = '';
        amountDetails['list'].keys.forEach((key) {
          overallAsset =
              (overallAsset == '' ? overallAsset : overallAsset + ', ') +
                  (key + 's=' + amountDetails['list'][key].toString());
        });

        overallAsset = 'Balance: ' +
            (overallAsset + ', Total=' + amountDetails['total'].toString());

        String dispensed = '';
        withDrawAssetList.forEach((element) {
          dispensed = (dispensed == '' ? dispensed : dispensed + ', ') +
              (element['amount'].toString() +
                  's=' +
                  element['count'].toString());
        });
        dispensed = 'Dispensed: ' +
            (dispensed + ', Total=' + withdrawAmount.toString());
        arguments['status'] = true;
        arguments['msg'] = dispensed + ' \n' + overallAsset;
        AppStore().setAmount(amountDetails);
      } else {
        arguments['msg'] = AppTextConstants.WITHDRAW_DISPENSABLE_ERROR;
      }
    } else {
      arguments['msg'] = AppTextConstants.WITHDRAW_INCORRECT;
    }

    Navigator.of(context)
        .pushReplacementNamed(ScreenRoutes.STATUS, arguments: arguments);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppbarWidget(AppTextConstants.CASH_WITHDRAW, context),
      body: Padding(
        padding: EdgeInsets.all(
          AppWidgetSize.bodyPadding,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: AppWidgetSize.bodyPadding),
              child: Text(
                AppTextConstants.CASH_WITHDRAW_INSTRUCT,
                style: Theme.of(context).textTheme.headline3,
              ),
            ),
            ...List.generate(
              withDrawList.length,
              (moneyIndex) {
                int moneyItem = withDrawList[moneyIndex];
                return InkWell(
                  onTap: () => _withdrawButtonPressed(moneyItem),
                  child: Card(
                    margin: EdgeInsets.only(top: AppWidgetSize.dimen_20),
                    elevation: 3,
                    child: Padding(
                      padding: EdgeInsets.all(AppWidgetSize.dimen_20),
                      child: Text(
                        moneyItem.toString(),
                        style: Theme.of(context).primaryTextTheme.headline3,
                      ),
                    ),
                  ),
                );
              },
            ).toList()
          ],
        ),
      ),
    );
  }
}
