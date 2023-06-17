import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SearchScreen extends StatelessWidget {
  final List<String> images = [
    'https://images.pexels.com/photos/1646953/pexels-photo-1646953.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    'https://images.pexels.com/photos/1579708/pexels-photo-1579708.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    'https://images.pexels.com/photos/3893650/pexels-photo-3893650.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    'https://images.pexels.com/photos/179747/pexels-photo-179747.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    'https://images.pexels.com/photos/7883486/pexels-photo-7883486.jpeg?auto=compress&cs=tinysrgb&w=300',
    'https://images.pexels.com/photos/1081685/pexels-photo-1081685.jpeg?auto=compress&cs=tinysrgb&w=300',
    'https://images.pexels.com/photos/1646953/pexels-photo-1646953.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    'https://images.pexels.com/photos/1579708/pexels-photo-1579708.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    'https://images.pexels.com/photos/3893650/pexels-photo-3893650.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    'https://images.pexels.com/photos/179747/pexels-photo-179747.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    'https://images.pexels.com/photos/7883486/pexels-photo-7883486.jpeg?auto=compress&cs=tinysrgb&w=300',
    'https://images.pexels.com/photos/1081685/pexels-photo-1081685.jpeg?auto=compress&cs=tinysrgb&w=300',
    'https://images.pexels.com/photos/1646953/pexels-photo-1646953.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    'https://images.pexels.com/photos/1579708/pexels-photo-1579708.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    'https://images.pexels.com/photos/163036/mario-luigi-yoschi-figures-163036.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    'https://images.pexels.com/photos/179747/pexels-photo-179747.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    'https://images.pexels.com/photos/7883486/pexels-photo-7883486.jpeg?auto=compress&cs=tinysrgb&w=300',
    'https://images.pexels.com/photos/1081685/pexels-photo-1081685.jpeg?auto=compress&cs=tinysrgb&w=300',
  ];
  SearchScreen({super.key});

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
                Navigator.pushNamed(context, '/profilescreen');
              },
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                flex: 9,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10, top: 20),
                  child: TextFormField(
                    keyboardType: TextInputType.text,
                    style: const TextStyle(
                      fontFamily: 'Poppins-Regular',
                      fontSize: 16,
                    ),
                    cursorColor: Colors.black,
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 12, horizontal: 16),
                      fillColor: Colors.grey[200],
                      prefixIcon: const Icon(
                        FontAwesomeIcons.magnifyingGlass,
                        color: Colors.grey,
                        size: 18,
                      ),
                      filled: true,
                      hintText: 'Search',
                      hintStyle: const TextStyle(
                        color: Colors.grey,
                        fontFamily: 'Poppins-Regular',
                        fontSize: 14,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: BorderSide(color: Colors.grey[200]!),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: BorderSide(
                            color: Colors.grey[200]!), // Set the border color
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: BorderSide(
                            color: Colors.grey[200]!), // Set the border color
                      ),
                    ),
                  ),
                ),
              ),
              const Expanded(
                flex: 1,
                child: Padding(
                  padding: EdgeInsets.only(right: 8.0, top: 20, left: 8),
                  child: Icon(FontAwesomeIcons.tags),
                ),
              ),
            ],
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3, // Number of columns in the grid
                  mainAxisSpacing: 8.0, // Spacing between rows
                  crossAxisSpacing: 8.0, // Spacing between columns
                ),
                itemCount: images.length,
                itemBuilder: (BuildContext context, int index) {
                  return Image.network(
                    images[index],
                    fit: BoxFit.cover,
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
