import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:flutter/material.dart';

import 'assets.dart';

class HomeScreen extends StatelessWidget {
  final User? user;
  final String uname;

  HomeScreen({super.key, this.user})
      : uname = user?.displayName ?? "Anonymous";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            icon: const Icon(Icons.person),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute<ProfileScreen>(
                  builder: (context) => ProfileScreen(
                    appBar: AppBar(
                      title: const Text("User Profile"),
                    ),
                    actions: [
                      SignedOutAction(
                        (context) => Navigator.of(context).pop(),
                      )
                    ],
                    children: const [
                      Divider(),
                      Padding(
                        padding: EdgeInsets.all(2),
                        child: AspectRatio(
                          aspectRatio: 1,
                          child: PNG("heart"),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          )
        ],
      ),
      body: Center(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(20),
              child: AspectRatio(
                aspectRatio: 1,
                child: PNG("heart"),
              ),
            ),
            Text(
              'Welcome, $uname!',
              style: Theme.of(context).textTheme.displaySmall,
            ),
            const SignOutButton(),
          ],
        ),
      ),
    );
  }
}
