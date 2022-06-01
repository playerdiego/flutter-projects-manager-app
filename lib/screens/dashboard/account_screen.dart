import 'package:flutter/material.dart';
import 'package:project_manager/widgets/custom_appbar.dart';
import 'package:project_manager/widgets/custom_drawer.dart';

class AccountScreen extends StatelessWidget {
   
  const AccountScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const CustomDrawer(),
      appBar: CustomAppBar.appBar('Mi Cuenta'),
      body: const Center(
         child: Text('AccountScreen'),
      ),
    );
  }
}