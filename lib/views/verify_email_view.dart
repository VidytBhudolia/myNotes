import 'package:flutter/material.dart';
import 'package:mynotes/counstants/routes.dart';
import 'package:mynotes/services/auth/auth_service.dart';

class VerifyEmailView extends StatefulWidget {
  const VerifyEmailView({super.key});

  @override
  State<VerifyEmailView> createState() => _VerifyEmailViewState();
}

class _VerifyEmailViewState extends State<VerifyEmailView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const Text(
                "Verification email haas been sent to your email address. Please verify your email address to continue."),
            const Text(
                "If you have not recieved the email, please click the button below to resend the email."),
            TextButton(
                onPressed: () async {
                  AuthService.firebase().sendEmailVerification();
                },
                child: const Text("Send Email Verification")),
            TextButton(
                onPressed: () async {
                  await AuthService.firebase().logout();
                  Navigator.of(context)
                      .pushNamedAndRemoveUntil(registerRoute, (_) => false);
                },
                child: const Text("Restart")),
          ],
        ),
      ),
    );
  }
}
