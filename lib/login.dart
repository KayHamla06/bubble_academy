import 'package:flutter/material.dart';
import 'offline/offline_homepage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isLoginPage = true; // Flag to toggle between login and sign-up

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20.0), // Ensures proper spacing
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch, // Full width elements
            children: [
              // Bubble Academy Header
              ConstrainedBox(
                constraints: const BoxConstraints(
                  minWidth: 100,
                  maxWidth: 200,
                  minHeight: 50,
                  maxHeight: 100,
                ),
                child: Container(
                  alignment: Alignment.topCenter,
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: const TextSpan(
                      text: "BUBBLE",
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                      ),
                      children: [
                        TextSpan(
                          text: "\nACADEMY",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue,
                          ),
                        ),
                        TextSpan(
                          text: "*",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.yellow,
                          ),
                        ),
                        TextSpan(
                          text: "\nYour Pocket School!",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.normal,
                            color: Colors.blue,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              // Login or Sign Up Header
              Text(
                isLoginPage ? "Login Page" : "Sign Up Page",
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
              const SizedBox(height: 20),
              // Login Fields
              if (isLoginPage) ...[
                TextField(
                  decoration: const InputDecoration(
                    labelText: 'Enter Your Email',
                    prefixIcon: Icon(Icons.email),
                    border: OutlineInputBorder(),
                  ),
                  keyboardType: TextInputType.emailAddress,
                ),
                const SizedBox(height: 16),
                TextField(
                  obscureText: true,
                  decoration: const InputDecoration(
                    labelText: 'Enter Your Password',
                    prefixIcon: Icon(Icons.lock),
                    border: OutlineInputBorder(),
                  ),
                ),
              ] else ...[
                // Sign-Up Fields
                TextField(
                  decoration: const InputDecoration(
                    labelText: 'Enter Your Full Name',
                    prefixIcon: Icon(Icons.person),
                    border: OutlineInputBorder(),
                  ),
                  keyboardType: TextInputType.name,
                ),
                const SizedBox(height: 16),
                TextField(
                  decoration: const InputDecoration(
                    labelText: 'Enter Your Email',
                    prefixIcon: Icon(Icons.email),
                    border: OutlineInputBorder(),
                  ),
                  keyboardType: TextInputType.emailAddress,
                ),
                const SizedBox(height: 16),
                TextField(
                  obscureText: true,
                  decoration: const InputDecoration(
                    labelText: 'Enter Your Password',
                    prefixIcon: Icon(Icons.lock),
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 16),
                TextField(
                  obscureText: true,
                  decoration: const InputDecoration(
                    labelText: 'Confirm Your Password',
                    prefixIcon: Icon(Icons.lock_outline),
                    border: OutlineInputBorder(),
                  ),
                ),
              ],
              const SizedBox(height: 20),
              // Toggle Buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () {
                      setState(() {
                        isLoginPage = true;
                      });
                    },
                    style: TextButton.styleFrom(
                      backgroundColor: isLoginPage ? Colors.grey[300] : Colors.transparent,
                    ),
                    child: const Text("Login"),
                  ),
                  TextButton(
                    onPressed: () {
                      setState(() {
                        isLoginPage = false;
                      });
                    },
                    style: TextButton.styleFrom(
                      backgroundColor: !isLoginPage ? Colors.grey[300] : Colors.transparent,
                    ),
                    child: const Text("Sign Up"),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              // Submit Button
              ElevatedButton(
                onPressed: () {
                  if (isLoginPage) {
                    // Handle login logic
                    debugPrint("Login pressed");
                  } else {
                    // Handle sign-up logic
                    debugPrint("Sign up pressed");
                  }
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.yellow,
                  foregroundColor: Colors.black, // Text color
                  padding: const EdgeInsets.symmetric(vertical: 15),
                ),
                child: Text(isLoginPage ? "Login" : "Sign Up"),
              ),
              const SizedBox(height: 20),
              // Offline Access Button
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const OfflineHomepage(),
                    ),
                  );
                },
                child: const Text(
                  "Continue Without Login",
                  style: TextStyle(decoration: TextDecoration.underline),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
