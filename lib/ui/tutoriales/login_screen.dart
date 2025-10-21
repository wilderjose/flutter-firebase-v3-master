import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/ui/tutoriales/detail_screen.dart';
import 'package:flutter_application_1/ui/tutoriales/rigistarte.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isChecked = false;
  bool isActive = false;
  bool isHidePass = true;

  final userController = TextEditingController();
  final passController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    log('===> Entrando al build');
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(
          left: 12,
          right: 12,
          top: 80,
          bottom: 12,
        ),

        child: Form(
          key: formKey,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          child: Column(
            spacing: 10,
            children: [
              FlutterLogo(size: 160),

              TextFormField(
                controller: userController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  labelText: 'Username',
                  icon: Icon(Icons.email_outlined),
                  // prefixIcon: Icon(Icons.person_outline),
                  // suffixIcon: Icon(Icons.visibility),
                ),

                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Campo requerido";
                  }
                  return null;
                },
                // obscureText: false,
              ),

              SizedBox(height: 12),

              TextFormField(
                controller: passController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(
                      color: const Color.fromARGB(255, 202, 15, 15),
                    ),
                  ),
                  labelText: 'Password',
                  icon: Icon(Icons.lock_outline),
                  // prefixIcon: Icon(Icons.person_outline),
                  suffixIcon: IconButton(
                    padding: EdgeInsets.only(right: 20),
                    icon: Icon(
                      isHidePass ? Icons.visibility : Icons.visibility_off,
                      color: Colors.blue,
                    ),
                    onPressed: () {
                      isHidePass = !isHidePass;
                      setState(() {});
                    },
                  ),
                ),
                obscureText: isHidePass,

                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Campo requerido y secreto";
                  }
                  return null;
                },
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "Olvidaste tu contraseña?",
                    style: TextStyle(color: Colors.blue),
                    textAlign: TextAlign.left,
                  ),
                ],
              ),

              /* CheckboxListTile(
                value: isChecked,S
                onChanged: (bool? value) {
                  isChecked = value ?? false;
                  setState(() {});
                },
                title: Text('Deseas mantener tu sesion abierta?'),
                controlAffinity: ListTileControlAffinity.leading,
              ),
          
               */
              SizedBox(
                width: double.infinity,
                height: 50,
                child: FilledButton(
                  onPressed: () {
                    final username = userController.text;
                    final password = passController.text;
                    if (formKey.currentState?.validate() ?? password.isEmpty) {
                      // Form is valid, proceed with login
                    }

                    if (username.isEmpty || password.isEmpty) {
                      // Show error message
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text("DATOS FALTAMTES")),
                      );
                    } else {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailScreen(arg: '20'),
                        ),
                      );
                    }

                    // Perform login
                  },
                  style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all(Colors.blue),
                    foregroundColor: WidgetStateProperty.all(Colors.white),
                  ),
                  child: Text('INGRESAR'),
                ),
              ),

              SizedBox(
                width: double.infinity,
                height: 50,
                child: FilledButton(
                  onPressed: () {
                    /* final username = userController.text;
                    final password = passController.text;
                    if (formKey.currentState?.validate() ?? password.isEmpty) {
                      // Form is valid, proceed with login
                    }

                    if (username.isEmpty || password.isEmpty) {
                      // Show error message
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text("DATOS FALTAMTES")),
                      );
                    } else {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailScreen(arg: '20'),
                        ),
                      );
                    } */

                    // Perform login
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => RegistartPages()),
                    );
                  },
                  style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all(Colors.blue),
                    foregroundColor: WidgetStateProperty.all(Colors.white),
                  ),
                  child: Text('Registarte'),
                ),
              ),

              /* SwitchListTile(
                  value: isActive,
                  onChanged: (bool value) {
                    isActive = value;
                    setState(() {});
                  },
                  title: Text('Ejemplo switch'),
                  controlAffinity: ListTileControlAffinity.leading,
                ), */

              // Icon(
              //   isChecked ? Icons.favorite : Icons.favorite_border,
              //   color: isChecked ? Colors.red : Colors.black,
              //   size: 80,
              // ),
              // MyWidget(text: '$isActive'),
              //if (isChecked) Icon(Icons.favorite, color: Colors.red, size: 50),
              //if (!isChecked) Icon(Icons.favorite_border, color: Colors.black),
              /*  if (isActive) Icon(Icons.favorite, color: Colors.red, size: 50),
              if (!isActive)
                Icon(Icons.favorite_border, color: Colors.black, size: 50), */
            ],
          ),
        ),
      ),
    );
  }
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    log('===> Entrando a my widget');
    return Text(text);
  }
}
