import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController contrycode = TextEditingController();
  TextEditingController phonenumber = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    contrycode.text = "+94";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(13.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Login",
                  style: TextStyle(
                    fontSize: 55,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "By entering valid phone number you caneasily log in an get access to leo.",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.black),
                  ),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 46,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          child: TextField(
                            controller: contrycode,
                            keyboardType: TextInputType.phone,
                          ),
                        ),
                      ),
                      const SizedBox(width: 5),
                      const Text(
                        "|",
                        style: TextStyle(fontSize: 33, color: Colors.black),
                      ),
                      Expanded(
                        child: TextField(
                          controller: phonenumber,
                          keyboardType: TextInputType.phone,
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 80,
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Color(0xFF05B3D3)),
                    minimumSize: MaterialStateProperty.all<Size>(Size(370, 50)),
                    shape: MaterialStateProperty.all<OutlinedBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),
                  child: Text("Get Code"),
                ),
                const SizedBox(
                  height: 300,
                ),
                Center(child: Image.asset("assets/image/logo.png"))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
