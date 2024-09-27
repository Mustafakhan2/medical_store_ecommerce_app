import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Column(
                  children: [
                    Image.asset('assets/images/logo.png'),
                    Text(
                      'QUICK MEDICAL',
                      style: Theme.of(context).textTheme.displayLarge,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 100,
              ),
              Container(
                margin: const EdgeInsets.only(right: 50),
                child: Text(
                  'Please Enter your Mobile Number \nto Login/Sign Up:',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ),
              Container(
                margin: const EdgeInsets.all(35),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "+92 123456789",
                    hintStyle: const TextStyle(fontSize: 22, letterSpacing: 5),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 350,
                height: 50,
                // color: const Color(0xFF4157FF),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xff4157FF),
                      foregroundColor: Colors.white),
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/homepage');
                  },
                  child: const Text(
                    'CONTINUE',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
