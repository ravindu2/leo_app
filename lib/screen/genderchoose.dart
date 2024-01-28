import 'package:flutter/material.dart';

class GenderChoose extends StatelessWidget {
  const GenderChoose({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Text("Who are you?"),
            Text("Select your Gender here"),
            Row(
              children: [
                Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          color: Colors.black,
                          width: 2,
                        ),
                      ),
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(
                        "assets/image/male.png",
                        width: 150,
                        height: 150,
                      ),
                    ),
                    Text("Male"),
                  ],
                ),
                Spacer(),
                Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: Colors.black,
                          width: 2,
                        ),
                      ),
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(
                        "assets/image/female.png",
                        width: 150,
                        height: 150,
                      ),
                    ),
                    Text("Female"),
                  ],
                ),
              ],
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
          ],
        ),
      ),
    );
  }
}
