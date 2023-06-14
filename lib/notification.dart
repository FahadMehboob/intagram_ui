import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NotifyBell extends StatelessWidget {
  const NotifyBell({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          bottom: const TabBar(
            tabs: [
              Text(
                'Following',
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 16,
                    fontFamily: 'Poppins-Black'),
              ),
              Text(
                'You',
                style: TextStyle(
                    color: Color(0xff262626),
                    fontSize: 16,
                    fontFamily: 'Poppins-Black'),
              ),
            ],
            indicatorColor: Color(0xff262626),
            indicatorWeight: 4.0,
          ),
        ),
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
                  Navigator.pushNamed(context, '/notification');
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
      ),
    );
  }
}
