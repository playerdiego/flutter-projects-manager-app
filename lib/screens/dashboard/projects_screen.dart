import 'package:flutter/material.dart';
import 'package:project_manager/widgets/custom_appbar.dart';
import 'package:project_manager/widgets/custom_drawer.dart';

class ProjectsScreen extends StatelessWidget {
   
  const ProjectsScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const CustomDrawer(),
      appBar: CustomAppBar.appBar('Proyectos'),
      body: const Center(
         child: Text('ProjectsScreen'),
      ),
    );
  }
}