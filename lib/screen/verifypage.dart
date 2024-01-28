import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

class VerifyPage extends StatefulWidget {
  const VerifyPage({super.key});

  @override
  State<VerifyPage> createState() => _VerifyPageState();
}

class _VerifyPageState extends State<VerifyPage> {
  String otp = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme:
            IconThemeData(color: Colors.black), // Set a color for back button
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () =>
              Navigator.of(context).pop(), // Handle back button navigation
        ),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Verification"),
            OtpTextField(
              numberOfFields: 4,
              borderWidth: 4,
              showFieldAsBox: true,
              borderColor: Colors.black,
              keyboardType: TextInputType.number,
              handleControllers: handleControllers,
            ),
            Row(
              children: [
                const Text("Didn't recieve code ? "),
                InkWell(
                  onTap: () {},
                  child: const Text("Resend it"),
                ),
              ],
            ),
            ElevatedButton(
                onPressed: () {},
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(),
                  child: const Center(
                    child: Text("Verify"),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}

void handleControllers(List<TextEditingController?> controllers) {
  // Access individual controllers here (if needed)
  for (int i = 0; i < controllers.length; i++) {
    print("Controller ${i + 1}: ${controllers[i]?.text}");
  }

  // Combine OTP directly from the controllers (if needed)
  String combinedOtp = "";
  for (int i = 0; i < controllers.length; i++) {
    combinedOtp += controllers[i]?.text ?? ""; // Handle potential nulls
  }
  print("Combined OTP: $combinedOtp");
}

  // ... rest of your verification logic
