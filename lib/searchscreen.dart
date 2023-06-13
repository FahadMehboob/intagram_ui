import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        color: Theme.of(context).appBarTheme.backgroundColor,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: const Icon(
                FontAwesomeIcons.house,
                size: 25,
                color: Color(0xff262626),
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/homescreen');
              },
            ),
            IconButton(
              icon: const Icon(
                FontAwesomeIcons.magnifyingGlass,
                size: 25,
                color: Color(0xff262626),
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/searchscreen');
              },
            ),
            IconButton(
              icon: const Icon(
                FontAwesomeIcons.squarePlus,
                size: 25,
                color: Color(0xff262626),
              ),
              onPressed: () {
                // Handle favorite button press
              },
            ),
            IconButton(
              icon: const Icon(
                FontAwesomeIcons.bell,
                size: 25,
                color: Color(0xff262626),
              ),
              onPressed: () {
                // Handle notifications button press
              },
            ),
            IconButton(
              icon: const Icon(
                FontAwesomeIcons.circleUser,
                size: 25,
                color: Color(0xff262626),
              ),
              onPressed: () {
                // Handle profile button press
              },
            ),
          ],
        ),
      ),
    );
  }
}
