import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'balance_transfer_widget.dart';

class BalanceTransferScreen extends StatefulWidget {
  const BalanceTransferScreen({super.key});

  @override
  State<BalanceTransferScreen> createState() => _BalanceTransferScreenState();
}

class _BalanceTransferScreenState extends State<BalanceTransferScreen> {
  @override
  Widget build(BuildContext context) {
    return BalanceTransferWidget();
  }
}