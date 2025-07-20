import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: LoginPage(),
  ));
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 60),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Welcome Back", style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
            SizedBox(height: 5),
            Text("Enter your credential to login"),
            SizedBox(height: 40),
            TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.person),
                hintText: "Username",
                filled: true,
                fillColor: Colors.purple[50],
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(12), borderSide: BorderSide.none),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.lock),
                hintText: "Password",
                filled: true,
                fillColor: Colors.purple[50],
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(12), borderSide: BorderSide.none),
              ),
            ),
            SizedBox(height: 20),
            Center(
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.purple,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                  padding: EdgeInsets.symmetric(horizontal: 100, vertical: 16),
                ),
                child: Text("Login"),
              ),
            ),
            SizedBox(height: 10),
            Center(child: Text("Forgot password?", style: TextStyle(color: Colors.purple))),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't have an account? "),
                GestureDetector(
                  child: Text("Sign Up", style: TextStyle(color: Colors.purple)),
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (_) => SignUpPage()));
                  },
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Sign up", style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
            SizedBox(height: 5),
            Text("Create your account"),
            SizedBox(height: 30),
            buildField(Icons.person, "Username"),
            SizedBox(height: 20),
            buildField(Icons.email, "Email"),
            SizedBox(height: 20),
            buildField(Icons.lock, "Password", obscure: true),
            SizedBox(height: 20),
            buildField(Icons.lock_outline, "Confirm Password", obscure: true),
            SizedBox(height: 20),
            Center(
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.purple,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                  padding: EdgeInsets.symmetric(horizontal: 100, vertical: 16),
                ),
                child: Text("Sign up"),
              ),
            ),
            SizedBox(height: 20),
            Center(child: Text("Or")),
            SizedBox(height: 10),
            Center(
              child: OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                  side: BorderSide(color: Colors.purple),
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 16),
                ),
                child: Text("Sign In with Google", style: TextStyle(color: Colors.purple)),
              ),
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Already have an account? "),
                GestureDetector(
                  child: Text("Login", style: TextStyle(color: Colors.purple)),
                  onTap: () {
                    Navigator.pop(context);
                  },
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget buildField(IconData icon, String hint, {bool obscure = false}) {
    return TextField(
      obscureText: obscure,
      decoration: InputDecoration(
        prefixIcon: Icon(icon),
        hintText: hint,
        filled: true,
        fillColor: Colors.purple[50],
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12), borderSide: BorderSide.none),
      ),
    );
  }
}
