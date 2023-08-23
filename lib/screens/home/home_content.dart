import 'package:flutter/material.dart';
import 'package:lithabit/screens/home/sections/all_purchased_books.dart';

import '../../widgets/keep_reading_section.dart';
import '../../widgets/last_opened_book.dart';

class HomeContent extends StatelessWidget {
  const HomeContent({super.key});

  @override
  Widget build(BuildContext context) {
    return  const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              LastOpenedBook(),
              KeepReadingSection(),
              AllPurchasedBooks(),
            ]
          ),
        ),
      );
  }
}