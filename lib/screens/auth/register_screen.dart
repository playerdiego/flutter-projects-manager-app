import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RegisterScreen extends StatelessWidget {
   
  const RegisterScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
         child: Padding(
           padding: const EdgeInsets.symmetric(horizontal: 15),
           child: SingleChildScrollView(
             physics: const BouncingScrollPhysics(),
             child: Column(
               children: const [
           
                Text('Crear una cuenta nueva', style: TextStyle(
                   fontSize: 40
                 )),
           
                SizedBox(height: 20),
           
                _RegisterForm(),
           
                SizedBox(height: 40),
           
                _SocialLogin(),
           
                SizedBox(height: 40),
           
                _OtherOptions()
           
           
               ],
             ),
           ),
         ),
      ),
    );
  }
}

class _RegisterForm extends StatelessWidget {
  const _RegisterForm({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [

          const TextField(
            decoration: InputDecoration(
              hintText: 'Nombre',
              prefixIcon: Icon(Icons.person) ,

            ),
          ),

          const SizedBox(height: 20),


          const TextField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              hintText: 'Email',
              prefixIcon: Icon(Icons.email) ,

            ),
          ),

          const SizedBox(height: 20),

          const TextField(
            obscureText: true,
            decoration: InputDecoration(
              hintText: 'Contraseña',
              prefixIcon: Icon(Icons.password),

            ),
          ),

          const SizedBox(height: 20),

          const TextField(
            obscureText: true,
            decoration: InputDecoration(
              hintText: 'Repite la contraseña',
              prefixIcon: Icon(Icons.password),

            ),
          ),

          const SizedBox(height: 20),

          ElevatedButton(
          onPressed: (){
            Navigator.pushNamed(context, 'dashboard');
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

class _SocialLogin extends StatelessWidget {
  const _SocialLogin({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        
        const Text('O Inicia Sesión con:', style: TextStyle(
          fontSize: 16
        )),

        const SizedBox(height: 20),


        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [

            IconButton(
              onPressed: (){},
              icon: const FaIcon(FontAwesomeIcons.google),
            ),

            IconButton(
              onPressed: (){},
              icon: const FaIcon(FontAwesomeIcons.github),
            ),

          ],
        )

      ],
    );
  }
}

class _OtherOptions extends StatelessWidget {
  const _OtherOptions({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        TextButton(
          onPressed: (){
            Navigator.pushNamed(context, 'login');
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text('¿Ya tienes una cuenta? Inicia Sesión aquí'),
              Icon(Icons.person)
            ],
          ),
        ),

      ],
    );
  }
}