import 'package:flutter/material.dart';
import 'package:project_manager/router/router.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: SafeArea(
          child: Column(
            children: const [
        
              _Profile(),
              SizedBox(height: 50),
              _Menu(),
              SizedBox(height: 50),
              _BottomMenu()
        
            ],
          ),
        ),
      ),
    );
  }
}

class _Profile extends StatelessWidget {
  const _Profile({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        
        CircleAvatar(
          radius: 60
        ),

        SizedBox(height: 20),

        Text('Diego Sebastián')

      ],
    );
  }
}

class _Menu extends StatelessWidget {
  const _Menu({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemBuilder: (_, index) => AppRouter.routes[index].isDashboard ? TextButton(
          onPressed: (){
            Navigator.pushNamed(context, AppRouter.routes[index].path);
          },
          child: Row(
            children: [

              Icon(AppRouter.routes[index].icon),
              const SizedBox(width: 20),
              Text(AppRouter.routes[index].name)

            ],
          ),
        ): Container(), 
        itemCount: AppRouter.routes.length
      ),
    );
  }
}

class _BottomMenu extends StatelessWidget {
  const _BottomMenu({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        TextButton(
          onPressed: (){
            Navigator.pushNamed(context, 'account');
          },
          child: Row(
            children: const [

              Icon(Icons.person_outline),
              SizedBox(width: 20),
              Text('Mi Cuenta')

            ],
          ),
        ),

        TextButton(
          onPressed: (){},
          child: Row(
            children: const [

              Icon(Icons.logout),
              SizedBox(width: 20),
              Text('Cerrar Sesión')

            ],
          ),
        ),

      ],
    );
  }
}