import 'package:flutter/material.dart';
import 'package:random/home.dart';
import 'package:random/sign_up.dart';

class Sign_in extends StatelessWidget {
  const Sign_in({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Venue Vibe'),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top:20.0, bottom: 20),
                child: Image.asset('assets/images/logo.png', height: 120),
              ),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 16),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Your password',
                  border: OutlineInputBorder(),
                  suffixIcon: IconButton(
                    icon: Icon(Icons.visibility_off),
                    onPressed: () {
                      // Handle password visibility
                    },
                  ),
                ),
              ),
              SizedBox(height: 16),
              Row(
                children: [
                  Switch(
                    value: false,
                    onChanged: (bool value) {
                      // Handle Remember Me switch
                    },
                  ),
                  Text('Remember Me'),
                  Spacer(),
                  TextButton(
                    child: Text('Forgot Password?'),
                    onPressed: () {
                      // Handle forgot password
                    },
                  ),
                ],
              ),
              SizedBox(height: 24),
              ElevatedButton(
                child: Text('SIGN IN'),
                onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>  Home()),
                  );
                },
              ),
              SizedBox(height: 24),
              Text(
                'OR',
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 24),
              ElevatedButton.icon(
                icon: Icon(Icons.g_translate),
                label: Text('Login with Google'),
                onPressed: () {
                  // Handle Google login
                },
              ),
              SizedBox(height: 16),
              ElevatedButton.icon(
                icon: Icon(Icons.facebook),
                label: Text('Login with Facebook'),
                onPressed: () {
                  // Handle Facebook login
                },
              ),
              TextButton(
                child: Text('Don’t have an account? Sign up'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>  Sign_up()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
