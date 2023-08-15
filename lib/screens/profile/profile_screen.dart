import 'package:flutter/material.dart';
import 'package:lithabit/screens/profile/sections/bio_section.dart';
import 'package:lithabit/widgets/keep_reading_section.dart';
import 'package:lithabit/screens/profile/sections/level_progress_section.dart';
import 'package:lithabit/screens/profile/sections/statis_section.dart';
import 'package:firebase_auth/firebase_auth.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {

  final user = FirebaseAuth.instance.currentUser!;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          user.email!,
          style: Theme.of(context).textTheme.labelLarge,
        ),
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              BioSection(),
              SizedBox(height: 16.0),
              LevelProgressSection(),
              SizedBox(height: 16.0),
              StatisSection(),
              SizedBox(height: 16.0),
              KeepReadingSection(),
            ],
          ),
        ),
      ),
    );
  }
}
