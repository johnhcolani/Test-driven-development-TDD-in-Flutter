import 'package:flutter/material.dart';
import 'package:testing/validator.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailTextFormField = TextEditingController();
  TextEditingController passwordTextFormField = TextEditingController();
  final GlobalKey<FormState> _key = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
appBar: AppBar(
  backgroundColor:Colors.grey.shade300,
  title: const Text('Login Screen',),),
      body: Form(
        key: _key,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: <Widget>[
              const SizedBox(height: 64,),
              TextFormField(
                controller: emailTextFormField,
                key:const ValueKey('email_id') ,
                decoration: InputDecoration(
                  labelText: 'Enter Your email Address',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(24.0),
                    borderSide: const BorderSide(
                        color: Colors.black, width: 2),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(24.0),
                    borderSide: const BorderSide(
                        color: Colors.green, width: 2),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(24),
                    borderSide: const BorderSide(
                        color: Colors.grey, width: 2),
                  ),
                ),
                validator: (value)=> Validator.validateEmail(value ?? ""),
              ),
              const SizedBox(height: 24.0),
              TextFormField(
                controller: passwordTextFormField,
                key:const ValueKey('password_id') ,
                decoration: InputDecoration(
                  labelText: 'Enter Your Password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(24.0),
                    borderSide: const BorderSide(
                        color: Colors.black, width: 2),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(24.0),
                    borderSide: const BorderSide(
                        color: Colors.green, width: 2),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(24),
                    borderSide: const BorderSide(
                        color: Colors.grey, width: 2),
                  ),
                ),
                validator: (value)=> Validator.validPassword(value ?? ""),

              ),
              const SizedBox(height: 24,),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor:Colors.grey.shade300
                  ),
                    onPressed: (){
                      _key.currentState?.validate();
                    },
                    child: const Text('Login')),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
