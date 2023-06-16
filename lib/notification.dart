import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NotifyBell extends StatelessWidget {
  const NotifyBell({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 15.0),
              child: TabBar(
                labelColor: Colors.black,
                labelStyle:
                    TextStyle(fontSize: 18, fontFamily: 'Poppins-Black'),
                unselectedLabelColor: Colors.grey,
                unselectedLabelStyle:
                    TextStyle(fontSize: 18, fontFamily: 'Poppins-Black'),
                tabs: [
                  Tab(
                    text: 'Following',
                  ),
                  Tab(
                    text: 'You',
                  ),
                ],
                indicatorColor: Color(0xff262626),
                indicatorWeight: 4.0,
              ),
            ),
            Expanded(
              child: TabBarView(
                children: [
                  Container(
                    child: const Center(
                      child: Text('Following'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: const [
                              Text(
                                "Follow Request",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontFamily: 'Poppins-Regular',
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              CircleAvatar(
                                backgroundColor:
                                    Color.fromARGB(255, 228, 223, 223),
                                radius: 15,
                                child: Text(
                                  "25+",
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.red,
                                    fontFamily: 'Poppins-Regular',
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Divider(
                          thickness: 1,
                          color: Colors.grey,
                        ),
                        Expanded(
                          child: ListView.builder(
                            itemCount: 50,
                            itemBuilder: (context, index) {
                              return Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: index == 0
                                        ? const Text(
                                            "NEW",
                                            style: TextStyle(
                                              fontFamily: "Poppins-Black",
                                              fontSize: 15,
                                            ),
                                          )
                                        : const Text(
                                            "Today",
                                            style: TextStyle(
                                              fontFamily: "Poppins-Black",
                                              fontSize: 15,
                                            ),
                                          ),
                                  ),
                                  index == 0
                                      ? ListTile(
                                          leading: const CircleAvatar(
                                            radius: 20,
                                            backgroundImage: NetworkImage(
                                                'https://images.pexels.com/photos/1681010/pexels-photo-1681010.jpeg?auto=compress&cs=tinysrgb&w=300'),
                                          ),
                                          title: const Text('Jane Smith'),
                                          subtitle:
                                              const Text('Liked your photo'),
                                          trailing:
                                              const Icon(Icons.more_horiz),
                                          onTap: () {
                                            // Handle notification item tap
                                          },
                                        )
                                      : ListTile(
                                          leading: const CircleAvatar(
                                            radius: 20,
                                            backgroundImage: NetworkImage(
                                                'https://images.pexels.com/photos/2379004/pexels-photo-2379004.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                                          ),
                                          title: const Text(
                                              'kiero_d, zackjohn and 26 others liked your photo. 3h'),
                                          trailing:
                                              const Icon(Icons.more_horiz),
                                          onTap: () {
                                            // Handle notification item tap
                                          },
                                        ),
                                  const Divider(
                                    thickness: 1,
                                    color: Colors.grey,
                                  ),
                                ],
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
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
