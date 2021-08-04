import 'package:flutter/material.dart';
import 'package:srilankan_breeds/colors.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0.0,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Breed infor",
              style: TextStyle(color: Colors.black45, fontSize: 14),
            ),
            Row(
              children: [
                Text(
                  "Search Breed",
                  style: Theme.of(context)
                      .textTheme
                      .headline6!
                      .copyWith(fontWeight: FontWeight.bold),
                ),
                Icon(
                  Icons.keyboard_arrow_down,
                  color: primaryColor,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
