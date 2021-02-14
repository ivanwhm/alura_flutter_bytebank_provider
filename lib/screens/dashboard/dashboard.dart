import 'package:flutter/material.dart';

import '../receive/form.dart';
import '../transfer/form.dart';
import '../transfer/latest.dart';
import 'balance_card.dart';

const _appBarTitle = 'ByteBank';
const _labelReceiveDepositButton = 'Receive Deposit';
const _labelSendTransferButton = 'Send Transfer';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_appBarTitle),
      ),
      body: ListView(
        children: <Widget>[
          Align(
            child: BalanceCard(),
            alignment: Alignment.topCenter,
          ),
          ButtonBar(
            alignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                child: Text(_labelReceiveDepositButton),
                onPressed: () => _receiveDeposit(context),
              ),
              ElevatedButton(
                child: Text(_labelSendTransferButton),
                onPressed: () => _sendTransfer(context),
              ),
            ],
          ),
          LatestTransfers(),
        ],
      ),
    );
  }

  void _receiveDeposit(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ReceiveForm()),
    );
  }

  void _sendTransfer(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => TransferForm()),
    );
  }
}
