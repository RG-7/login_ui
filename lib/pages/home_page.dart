import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height / 1.5,
                width: MediaQuery.of(context).size.width,
                child: Image.asset(
                  "images/login image.png",
                  fit: BoxFit.fill,
                ),
              ),
              const Positioned(
                top: 100,
                left: 170,
                child: Text(
                  "Login",
                  style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              Positioned(
                top: 200,
                left: 65,
                child: Column(
                  children: [
                    // for user name
                    usernameTextField(),
                    const SizedBox(
                      height: 25,
                    ),
                    // for password
                    passwordField(),
                    const SizedBox(
                      height: 55,
                    ),
                    // for login
                    Container(
                      height: 50,
                      width: 300,
                      decoration: BoxDecoration(
                        color: const Color(0xFF6B75CE),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.only(
                          top: 10,
                        ),
                        child: Text(
                          "login",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    // for forget password
                    const Text(
                      "Forget Password?",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 80,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: Row(
              children: [
                Container(
                  color: Colors.black12,
                  width: 100,
                  height: 12,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 10,
                  ),
                  child: Row(
                    children: [
                      Text(
                        "or connect with",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black54,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 2,
                  color: Colors.black12,
                  width: 100,
                ),
              ],
            ),
          ),
          // for social media
          socialMedia(),
          const Text.rich(
            TextSpan(
              children: [
                TextSpan(text: " Don't have an account?"),
                TextSpan(
                  text: " Sign Up",
                  style: TextStyle(
                    color: Color(0xFF6B75CE),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Padding socialMedia() {
    return Padding(
      padding: const EdgeInsets.only(top: 40, bottom: 50, right: 27, left: 27),
      child: Row(
        children: [
          Container(
            height: 45,
            width: 177,
            decoration: BoxDecoration(
              color: Colors.lightBlue,
              borderRadius: BorderRadius.circular(50),
            ),
            child: const Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                Icon(
                  Icons.facebook,
                  size: 30,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 15,
                ),
                Text(
                  "Facebook",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          const Spacer(),
          Container(
            height: 45,
            width: 177,
            decoration: BoxDecoration(
              color: const Color(0xFF6B75CE),
              borderRadius: BorderRadius.circular(50),
            ),
            child: Row(
              children: [
                const SizedBox(
                  width: 20,
                ),
                Image.asset(
                  "images/twitter icon.jpg",
                  height: 30,
                  width: 25,
                ),
                const SizedBox(
                  width: 15,
                ),
                const Text(
                  "Twitter",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Container passwordField() {
    return Container(
      height: 300,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25),
      ),
      child: const Row(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 25),
            child: Icon(
              Icons.lock_open_outlined,
              color: Colors.black45,
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(
                left: 18,
                top: 3,
                bottom: 3,
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Password",
                  hintStyle: TextStyle(
                    color: Colors.black45,
                  ),
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container usernameTextField() {
    return Container(
      height: 300,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25),
      ),
      child: const Row(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 25),
            child: Icon(
              Icons.person_outlined,
              color: Colors.black45,
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(
                left: 18,
                top: 3,
                bottom: 3,
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Enter username",
                  hintStyle: TextStyle(
                    color: Colors.black45,
                  ),
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 15),
            child: Icon(
              Icons.check_circle,
              color: Colors.green,
            ),
          ),
        ],
      ),
    );
  }
}
