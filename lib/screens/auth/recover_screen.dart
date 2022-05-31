import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RecoverScreen extends StatelessWidget {
   
  const RecoverScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
      ),
      body: Center(
         child: Padding(
           padding: const EdgeInsets.symmetric(horizontal: 15),
           child: SingleChildScrollView(
             physics: const BouncingScrollPhysics(),
             child: Column(
               children: const [
           
                Text('Recupera tu cuenta', style: TextStyle(
                   fontSize: 40
                 )),
           
                SizedBox(height: 40),
           
                _RecoverForm(),
           
           
               ],
             ),
           ),
         ),
      ),
    );
  }
}

class _RecoverForm extends StatelessWidget {
  const _RecoverForm({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [

          const TextField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              hintText: 'Email',
              prefixIcon: Icon(Icons.email) ,

            ),
          ),

          const SizedBox(height: 40),

          ElevatedButton(
          onPressed: (){
            Navigator.pushNamed(context, 'login');
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
  
              Icon(Icons.person),
              SizedBox(width: 20),
              Text('Iniciar Seseión'),
  
            ],
          ),
        )

        ],
      ),
    );
  }
}