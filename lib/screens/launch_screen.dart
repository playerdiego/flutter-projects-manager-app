import 'package:flutter/material.dart';

class LaunchScreen extends StatelessWidget {
   
  const LaunchScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
      
            const SizedBox(height: 300),
      
            const Text('Project Manager', style: TextStyle(
              fontSize: 35
            )),
      
            const SizedBox(height: 250),
      
      
            ElevatedButton(
              onPressed: (){
                Navigator.pushNamed(context, 'login');
              },
              child: Container(
                width: 200,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
      
                    Text('Continuar'),
                    Icon(Icons.navigate_next)
      
                  ],
                ),
              ),
            )
      
          ],
        ),
      ),
    );
  }
}