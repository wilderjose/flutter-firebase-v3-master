import 'package:flutter/material.dart';
import 'package:flutter_application_1/ui/tutoriales/login_screen.dart';

class RegistartPages extends StatefulWidget {
  const RegistartPages({super.key});
  final String title = 'Registro';

  @override
  State<RegistartPages> createState() => _RegistartPagesState();
}

class _RegistartPagesState extends State<RegistartPages> {
  final userrController = TextEditingController();
  final passsController = TextEditingController();
  final emailController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 25.0,
            right: 25.0,
            top: 70.0,
            bottom: 8.0,
          ),
          child: Form(
            key: formKey,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            child: Column(
              spacing: 20,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Registro',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                TextFormField(
                  controller: userrController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    labelText: 'Usuario',
                    icon: Icon(Icons.person_outline),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Campo requerido y secreto";
                    }
                    return null;
                  },
                ),

                TextFormField(
                  controller: emailController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    labelText: 'Email',
                    icon: Icon(Icons.email_outlined),
                  ),
                  //obscureText: true,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Campo requerido y secreto";
                    }
                    return null;
                  },
                ),

                TextFormField(
                  controller: passsController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    labelText: 'Password',
                    icon: Icon(Icons.lock_outline),
                  ),
                  //obscureText: true,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Campo requerido y secreto";
                    }
                    return null;
                  },
                ),

                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: FilledButton(
                    onPressed: () {
                      final username = userrController.text;
                      final password = passsController.text;
                      final email = emailController.text;
                      if (formKey.currentState?.validate() ??
                          password.isEmpty) {
                        // Form is valid, proceed with login
                      }

                      if (username.isEmpty ||
                          password.isEmpty ||
                          email.isEmpty) {
                        // Show error message
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text("DATOS FALTAMTES")),
                        );
                      } else {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LoginScreen(),
                          ),
                        );
                      }

                      // Perform login
                    },
                    style: ButtonStyle(
                      backgroundColor: WidgetStateProperty.all(Colors.blue),
                      foregroundColor: WidgetStateProperty.all(Colors.white),
                    ),
                    child: Text('Enviar'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
