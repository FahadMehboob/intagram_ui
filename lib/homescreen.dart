import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
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
                  // Handle home button press
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
        appBar: AppBar(
          actions: const [
            Icon(
              FontAwesomeIcons.heart,
              size: 25,
              color: Color(0xff262626),
            ),
            SizedBox(
              width: 15,
            ),
            Padding(
              padding: EdgeInsets.only(right: 10),
              child: Icon(
                FontAwesomeIcons.paperPlane,
                size: 25,
                color: Color(0xff262626),
              ),
            ),
          ],
          leading: const Icon(
            Icons.camera_alt_outlined,
            size: 35,
            color: Color(0xff262626),
          ),
          backgroundColor: const Color(0xffFAFAFA),
          centerTitle: true,
          title: const Image(
            image: AssetImage('assets/logo.png'),
            height: 200,
            width: 200,
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 100,
                child: ListView.builder(
                  itemCount: 10,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Stack(
                        children: [
                          Container(
                            decoration: index == 0
                                ? BoxDecoration(
                                    border: Border.all(
                                        color: Colors.white, width: 3),
                                    shape: BoxShape.circle,
                                  )
                                : BoxDecoration(
                                    border: Border.all(
                                      color: Colors.green,
                                      width: 3,
                                    ),
                                    shape: BoxShape.circle,
                                  ),
                            child: CircleAvatar(
                              backgroundImage: index == 0
                                  ? const NetworkImage(
                                      'https://images.pexels.com/photos/2613260/pexels-photo-2613260.jpeg',
                                    )
                                  : const NetworkImage(
                                      'https://images.pexels.com/photos/1681010/pexels-photo-1681010.jpeg?auto=compress&cs=tinysrgb&w=300',
                                    ),
                              radius: 40,
                              child: index == 0
                                  ? Align(
                                      alignment: Alignment.bottomRight,
                                      child: Container(
                                        padding: const EdgeInsets.all(2),
                                        decoration: const BoxDecoration(
                                          color: Colors.white,
                                          shape: BoxShape.circle,
                                        ),
                                        child: const Icon(
                                          Icons.add,
                                          color: Colors.blue,
                                          size: 20,
                                        ),
                                      ),
                                    )
                                  : null,
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              const Divider(),
              const ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://images.pexels.com/photos/2379004/pexels-photo-2379004.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                  radius: 30,
                ),
                title: Text(
                  'Smith_steve',
                  style: TextStyle(
                      fontFamily: 'Poppins-Black',
                      fontSize: 14,
                      color: Color(0xff262626)),
                ),
                subtitle: Text(
                  'Melbourne, Australia',
                  style: TextStyle(
                      fontFamily: 'Poppins-Regular',
                      fontSize: 12,
                      color: Color(0xff262626)),
                ),
                trailing: Icon(Icons.drag_handle),
              ),
              SizedBox(
                child: Image.network(
                  'https://images.pexels.com/photos/70497/pexels-photo-70497.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                  fit: BoxFit.fitWidth,
                  height: 300,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Icon(
                      FontAwesomeIcons.heart,
                      size: 25,
                      color: Color(0xff262626),
                    ),
                    SizedBox(width: 20),
                    Icon(
                      Icons.comment,
                      size: 25,
                      color: Color(0xff262626),
                    ),
                    SizedBox(width: 20),
                    Icon(
                      FontAwesomeIcons.paperPlane,
                      size: 25,
                      color: Color(0xff262626),
                    ),
                    Spacer(),
                    Icon(
                      Icons.more_horiz,
                      size: 25,
                      color: Color(0xff262626),
                    ),
                    SizedBox(width: 150),
                    Icon(
                      FontAwesomeIcons.bookmark,
                      size: 25,
                      color: Color(0xff262626),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0, top: 8),
                      child: Row(
                        children: const [
                          CircleAvatar(
                            backgroundImage: NetworkImage(
                                'https://images.pexels.com/photos/712513/pexels-photo-712513.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                            radius: 12,
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            'Liked by John, Lisa, and 20 others',
                            style: TextStyle(
                              fontFamily: 'Poppins-Regular',
                              fontSize: 12,
                              color: Color(0xff262626),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 6),
                    const Text(
                      'The Food in Australia was amazing and I want to share some photos ❤ ',
                      style: TextStyle(
                        fontFamily: 'Poppins-Regular',
                        fontSize: 12,
                        color: Color(0xff262626),
                      ),
                    ),
                  ],
                ),
              ),
              const Divider(),
              const ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://images.pexels.com/photos/1130626/pexels-photo-1130626.jpeg'),
                  radius: 30,
                ),
                title: Text(
                  'Meg_lanning',
                  style: TextStyle(
                    fontFamily: 'Poppins-Black',
                    fontSize: 14,
                    color: Color(0xff262626),
                  ),
                ),
                subtitle: Text(
                  'Sydney, Australia',
                  style: TextStyle(
                      fontFamily: 'Poppins-Regular',
                      fontSize: 12,
                      color: Color(0xff262626)),
                ),
                trailing: Icon(Icons.drag_handle),
              ),
              SizedBox(
                child: Image.network(
                  'https://images.pexels.com/photos/5641867/pexels-photo-5641867.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                  fit: BoxFit.fitWidth,
                  height: 300,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Icon(
                      FontAwesomeIcons.heart,
                      size: 25,
                      color: Color(0xff262626),
                    ),
                    SizedBox(width: 20),
                    Icon(
                      Icons.comment,
                      size: 25,
                      color: Color(0xff262626),
                    ),
                    SizedBox(width: 20),
                    Icon(
                      FontAwesomeIcons.paperPlane,
                      size: 25,
                      color: Color(0xff262626),
                    ),
                    Spacer(),
                    Icon(
                      Icons.more_horiz,
                      size: 25,
                      color: Color(0xff262626),
                    ),
                    SizedBox(width: 150),
                    Icon(
                      FontAwesomeIcons.bookmark,
                      size: 25,
                      color: Color(0xff262626),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0, top: 8),
                      child: Row(
                        children: const [
                          CircleAvatar(
                            backgroundImage: NetworkImage(
                                'https://images.pexels.com/photos/1681010/pexels-photo-1681010.jpeg?auto=compress&cs=tinysrgb&w=300'),
                            radius: 12,
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            'Liked by Steve, Allen, and 40 others',
                            style: TextStyle(
                              fontFamily: 'Poppins-Regular',
                              fontSize: 12,
                              color: Color(0xff262626),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 6),
                    const Text(
                      "Nature's beauty is a gentle reminder to slow down and find tranquility. 🦋",
                      style: TextStyle(
                        fontFamily: 'Poppins-Regular',
                        fontSize: 12,
                        color: Color(0xff262626),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
