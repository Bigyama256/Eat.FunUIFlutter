import 'package:eat/pages/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset("assets/e2.png"),
          Image.asset("assets/fastfood.png"),
          Opacity(
            opacity: 0.8,
            child: Image.asset("assets/e1.png"),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Image.asset("assets/logo.png"),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Image.asset("assets/pizza.png"),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Image.asset("assets/burger.png"),
          ),
          Container(
            height: 400,
            width: double.infinity,
            margin: EdgeInsets.fromLTRB(10, 190, 10, 20),
            padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(),
              borderRadius: BorderRadius.circular(5),
            ),
            child: Column(
              children: [
                TabBar(
                  controller: tabController,
                  labelColor: Colors.red,
                  tabs: [
                    Tab(text: "Login"),
                    Tab(text: "Signup"),
                  ],
                ),
                Expanded(
                  child: TabBarView(
                    controller: tabController,
                    children: [
                      LoginWidget(),
                      SignupWidget(),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class LoginWidget extends StatelessWidget {
  const LoginWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 20,
        ),
        TextField(
          decoration: InputDecoration(
            hintText: "Enter email or Username",
          ),
        ),
        SizedBox(
          height: 30,
        ),
        TextField(
          decoration: InputDecoration(
            hintText: "Enter password",
          ),
        ),
        Align(
          alignment: Alignment.centerRight,
          child: TextButton(
            onPressed: () {},
            child: Text(
              "Forgot Password ?",
              style: TextStyle(color: Colors.grey),
            ),
          ),
        ),
        SizedBox(height: 10),
        ElevatedButton(
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.red),
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              minimumSize: MaterialStateProperty.all(Size(150, 40))),
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => Profilepage(),
              ),
            );
          },
          child: Text(
            "Log In",
            style: TextStyle(color: Colors.white),
          ),
        ),
        SizedBox(height: 5),
        Text(
          "OR",
          style: TextStyle(color: Colors.grey),
        ),
        SizedBox(height: 5),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              onPressed: () {},
              icon: Image.asset("assets/G.png"),
            ),
            IconButton(
              onPressed: () {},
              icon: Image.asset("assets/f.png"),
            ),
          ],
        ),
      ],
    );
  }
}

class SignupWidget extends StatelessWidget {
  const SignupWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          TextField(
            decoration: InputDecoration(
              hintText: "Enter email or Username",
            ),
          ),
          SizedBox(
            height: 30,
          ),
          TextField(
            decoration: InputDecoration(
              hintText: "Enter password",
            ),
          ),
          SizedBox(
            height: 30,
          ),
          TextField(
            decoration: InputDecoration(
              hintText: "Confirm password",
            ),
          ),
          SizedBox(
            height: 30,
          ),
          SizedBox(
            width: 150,
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.red),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                // maximumSize: MaterialStateProperty.all(
                //   Size(150, 40),
                // ),
                // minimumSize: MaterialStateProperty.all(
                //   Size(150, 40),
                // ),
                //   fixedSize: MaterialStateProperty.all(
                //   Size(150, 40),
                // ),
              ),
              onPressed: () {},
              child: Text(
                "Sign Up",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          SizedBox(height: 5),
          Align(
            alignment: Alignment.center,
            child: Text(
              "OR",
              style: TextStyle(color: Colors.grey),
            ),
          ),
          SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {},
                icon: Image.asset("assets/G.png"),
              ),
              IconButton(
                onPressed: () {},
                icon: Image.asset("assets/f.png"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
