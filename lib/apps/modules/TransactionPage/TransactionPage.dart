import 'package:flutter/material.dart';
import 'package:flutter_app_project/apps/modules/widgets/MainAppBar.dart';

class TransactionPage extends StatefulWidget {
  const TransactionPage({super.key});

  @override
  State<TransactionPage> createState() => _TransactionPageState();
}

class _TransactionPageState extends State<TransactionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: MainAppBar(context),
        elevation: 0,
      ),
    );
  }
}
