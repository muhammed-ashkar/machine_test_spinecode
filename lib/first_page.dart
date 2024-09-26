import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF1A1B2F),
        elevation: 0, // Remove shadow under the app bar
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.of(context).pop(); // Go back to the previous screen
          },
        ),
      ),
      backgroundColor: const Color(0xFF1A1B2F), // Background color
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start, // Align items at the start
            children: [
              // Adding some space from the top
              const SizedBox(height: 30), // Increased height for logo proximity to the app bar

              // Logo at the top
              Center(
                child: Image.asset(
                  'assets/Logo.png',
                  height: 100,
                  width: 100,
                ),
              ),
              const SizedBox(height: 30), // Increased space between logo and email field

              // Email field
              TextField(
                style: const TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  labelText: 'Email',
                  labelStyle: const TextStyle(color: Colors.white),
                  filled: true,
                  fillColor: const Color(0xFF2A2B4A),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
              const SizedBox(height: 10), // Reduced space between email and password fields

              // Password field
              TextField(
                obscureText: true,
                style: const TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  labelText: 'Пароль',
                  labelStyle: const TextStyle(color: Colors.white),
                  filled: true,
                  fillColor: const Color(0xFF2A2B4A),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  suffixIcon: const Icon(Icons.visibility_off, color: Colors.grey),
                ),
              ),
              const SizedBox(height: 10),

              // Remember Me and Forgot Password Row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Checkbox(
                        value: true,
                        onChanged: (value) {},
                        activeColor: const Color(0xFF9B51E0),
                      ),
                      const Text(
                        'Запомнить меня',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                  const Text(
                    'Забыли пароль?',
                    style: TextStyle(color: Color(0xFF9B51E0)),
                  ),
                ],
              ),
              const SizedBox(height: 20),

              // Login Button
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF9B51E0),
                  padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 100),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: const Text('Войти', style: TextStyle(color: Colors.white)),
              ),
              const SizedBox(height: 20),

              // Social Media Login Options
              const Row(
                children: <Widget>[
                  Expanded(
                    child: Divider(
                      color: Colors.white,
                      thickness: 1, // Adjust the thickness of the line
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      'Или продолжить с',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  Expanded(
                    child: Divider(
                      color: Colors.white,
                      thickness: 1, // Adjust the thickness of the line
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded( // Added Expanded to avoid overflow
                    child: IconButton(
                      icon: Image.asset('assets/Google.png'),
                      onPressed: () {},
                      iconSize: 50,
                    ),
                  ),
                  Expanded(
                    child: IconButton(
                      icon: Image.asset('assets/Facebook.png'),
                      onPressed: () {},
                      iconSize: 50,
                    ),
                  ),
                  Expanded(
                    child: IconButton(
                      icon: Image.asset('assets/Twitter.png'),
                      onPressed: () {},
                      iconSize: 50,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),

              // New user registration link
              TextButton(
                onPressed: () {},
                child: const Text(
                  'Новый пользователь?\nЗарегистрироваться',
                  style: TextStyle(color: Color(0xFF9B51E0)),
                  textAlign: TextAlign.center, // Center align the text
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
