import 'package:flutter/material.dart';

void main() {
    runApp(const PhysiqueApp());
}

class PhysiqueApp extends StatelessWidget {
  const PhysiqueApp({super.key});

    @override
      
    Widget build(BuildContext context) {
        return const MaterialApp(
            home: LoginPage(),
        );
    }
}

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

    @override
    // ignore: library_private_types_in_public_api
    _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
    final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
    final TextEditingController _emailController = TextEditingController();
    final TextEditingController _passwordController = TextEditingController();

    bool isLoggedIn = false;

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                    title: const Text('Physique App Login'),
        ),
        body: SingleChildScrollView(
        child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
        autovalidateMode: AutovalidateMode.always, key: _formKey,
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
        TextFormField(
            controller: _emailController,
            decoration: const InputDecoration(labelText: 'Email'),
        validator: (value) {
        if (value == null || value.isEmpty) {
            return 'Please enter an email address.';
        }
        return null;
    },
        ),
        const SizedBox(height: 16.0),
        TextFormField(
            controller: _passwordController,
            obscureText: true,
        decoration: const InputDecoration(labelText: 'Password'),
        validator: (value) {
        if (value == null || value.isEmpty) {
            return 'Please enter a password.';
        }
        return null;
    },
        ),
        const SizedBox(height: 32.0),
        ElevatedButton(
            onPressed: () {
            if (_formKey.currentState!.validate() && !isLoggedIn) {
            // Handle login logic here
            // You can add authentication logic here
            // ignore: avoid_print
            print('Email: ${_emailController.text}, Password: ${_passwordController.text}');

            isLoggedIn = true; 
        }
        },
        child: const Text('Login'),
        ),
        ],
        ),
        ),
        ),
        ),
        );
    }

    @override
    void dispose() {
        _emailController.dispose();
        _passwordController.dispose();
        super.dispose();
    }
}
