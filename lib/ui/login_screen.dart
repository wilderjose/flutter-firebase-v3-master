import 'dart:developer';

import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isChecked = false;
  bool isActive = false;
  bool isHidePass = true;

  @override
  Widget build(BuildContext context) {
    log('===> Entrando al build');
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          spacing: 12,
          children: [
            FlutterLogo(size: 150),

            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                labelText: 'Username',
                icon: Icon(Icons.email_outlined),
                // prefixIcon: Icon(Icons.person_outline),
                // suffixIcon: Icon(Icons.visibility),
              ),
              // obscureText: false,
            ),

            SizedBox(height: 12),

            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                labelText: 'Password',
                icon: Icon(Icons.lock_outline),
                // prefixIcon: Icon(Icons.person_outline),
                suffixIcon: IconButton(
                  padding: EdgeInsets.only(right: 20),
                  icon: Icon(
                    isHidePass ? Icons.visibility : Icons.visibility_off,
                  ),
                  onPressed: () {
                    isHidePass = !isHidePass;
                    setState(() {});
                  },
                ),
              ),
              obscureText: isHidePass,
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

            CheckboxListTile(
              value: isChecked,
              onChanged: (bool? value) {
                isChecked = value ?? false;
                setState(() {});
              },
              title: Text('Deseas mantener tu sesion abierta?'),
              controlAffinity: ListTileControlAffinity.leading,
            ),

            SizedBox(
              width: double.infinity,
              height: 50,
              child: FilledButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all(Colors.blue),
                  foregroundColor: WidgetStateProperty.all(Colors.white),
                ),
                child: Text('INGRESAR'),
              ),
            ),

            // SwitchListTile(
            //   value: isActive,
            //   onChanged: (bool value) {
            //     isActive = value;
            //     setState(() {});
            //   },
            //   title: Text('Ejemplo switch'),
            //   controlAffinity: ListTileControlAffinity.leading,
            // ),
            // Icon(
            //   isChecked ? Icons.favorite : Icons.favorite_border,
            //   color: isChecked ? Colors.red : Colors.black,
            //   size: 80,
            // ),
            // MyWidget(text: '$isActive'),
          ],
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
