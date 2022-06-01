import 'package:flutter/material.dart';
import 'package:project_manager/widgets/custom_appbar.dart';
import 'package:project_manager/widgets/custom_drawer.dart';

class BalanceScreen extends StatelessWidget {
   
  const BalanceScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const CustomDrawer(),
      appBar: CustomAppBar.appBar('Balance'),
      body: const Center(
         child: Text('BalanceScreen'),
      ),
    );
  }
}