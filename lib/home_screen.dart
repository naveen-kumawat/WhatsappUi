import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('WhatsApp'),
            bottom: const TabBar(
              tabs: [
                Tab(child: Icon(Icons.groups_outlined)),
                Tab(
                    child: Text(
                  'Chats',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                )),
                Tab(
                    child: Text(
                  'Status',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                )),
                Tab(
                    child: Text(
                  'Calls',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                )),
              ],
            ),
            actions: [
              const Icon(Icons.camera_alt_outlined),
              const SizedBox(
                width: 20,
              ),
              const Icon(Icons.search),
              const SizedBox(width: 10),
              PopupMenuButton(
                  icon: const Icon(Icons.more_vert_outlined),
                  itemBuilder: (context) => const [
                        PopupMenuItem(
                            child: Text(
                          'New Group',
                          style: TextStyle(fontSize: 16),
                        )),
                        PopupMenuItem(
                            child: Text(
                          'Setting',
                          style: TextStyle(fontSize: 16),
                        )),
                        PopupMenuItem(
                            child: Text(
                          'Logout',
                          style: TextStyle(fontSize: 16),
                        )),
                      ]),
              const SizedBox(
                width: 10,
              )
            ],
          ),
          body: TabBarView(
            children: [
              const Text('Groups'),
              ListView.builder(
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return const Column(
                      children: [
                        ListTile(
                          leading: CircleAvatar(
                            backgroundImage: NetworkImage(
                                'https://images.pexels.com/photos/2078149/pexels-photo-2078149.jpeg?auto=compress&cs=tinysrgb&w=600'),
                          ),
                          title: Text(
                            'Joffri',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text(
                            'Its good 😊',
                            style: TextStyle(
                                fontSize: 13, fontWeight: FontWeight.w500),
                          ),
                          trailing: Text(
                            '3.15 PM',
                            style: TextStyle(fontWeight: FontWeight.w600),
                          ),
                        ),
                        ListTile(
                          leading: CircleAvatar(
                            backgroundImage: NetworkImage(
                                'https://images.pexels.com/photos/1687675/pexels-photo-1687675.jpeg?auto=compress&cs=tinysrgb&w=600'),
                          ),
                          title: Text(
                            'Anaya',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text(
                            'When you come ?',
                            style: TextStyle(
                                fontSize: 13, fontWeight: FontWeight.w500),
                          ),
                          trailing: Text(
                            '1.15 AM',
                            style: TextStyle(fontWeight: FontWeight.w600),
                          ),
                        ),
                        ListTile(
                          leading: CircleAvatar(
                            backgroundImage: NetworkImage(
                                'https://images.pexels.com/photos/697509/pexels-photo-697509.jpeg?auto=compress&cs=tinysrgb&w=600'),
                          ),
                          title: Text(
                            'Lumers',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text(
                            'Hey buddy pickup calls',
                            style: TextStyle(
                                fontSize: 13, fontWeight: FontWeight.w500),
                          ),
                          trailing: Text(
                            '10.56 PM',
                            style: TextStyle(fontWeight: FontWeight.w600),
                          ),
                        ),
                      ],
                    );
                  }),
              ListView.builder(
                  itemCount: 1,
                  itemBuilder: (context, index) {
                    return const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ListTile(
                          leading: CircleAvatar(
                            backgroundImage: NetworkImage(
                                'https://images.pexels.com/photos/1674752/pexels-photo-1674752.jpeg?auto=compress&cs=tinysrgb&w=600'),
                          ),
                          title: Text(
                            'My Status',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text(
                            'Tap to add status updates',
                            style: TextStyle(fontSize: 13),
                          ),
                        ),
                        Padding(
                            padding: EdgeInsets.only(
                              left: 12,
                            ),
                            child: Text(
                              'Recent update',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16),
                            )),
                        ListTile(
                          leading: CircleAvatar(
                            backgroundImage: NetworkImage(
                                'https://images.pexels.com/photos/1499327/pexels-photo-1499327.jpeg?auto=compress&cs=tinysrgb&w=600'),
                          ),
                          title: Text(
                            'Nalin',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text(
                            'Today' ', ' '3.16PM',
                            style: TextStyle(fontSize: 13),
                          ),
                        ),
                        ListTile(
                          leading: CircleAvatar(
                            backgroundImage: NetworkImage(
                                'https://images.pexels.com/photos/343717/pexels-photo-343717.jpeg?auto=compress&cs=tinysrgb&w=600'),
                          ),
                          title: Text(
                            'Milan',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text(
                            'Yesterday' ', ' '9.32AM',
                            style: TextStyle(fontSize: 13),
                          ),
                        ),
                        ListTile(
                          leading: CircleAvatar(
                            backgroundImage: NetworkImage(
                                'https://images.pexels.com/photos/1435517/pexels-photo-1435517.jpeg?auto=compress&cs=tinysrgb&w=600'),
                          ),
                          title: Text(
                            'Hobo',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text(
                            'Today' ', ' '5.06PM',
                            style: TextStyle(fontSize: 13),
                          ),
                        ),
                      ],
                    );
                  }),
              ListView.builder(
                  itemCount: 2,
                  itemBuilder: (context, index) {
                    return const Column(
                      children: [
                        ListTile(
                          leading: CircleAvatar(
                            backgroundImage: NetworkImage(
                                'https://images.pexels.com/photos/3781545/pexels-photo-3781545.jpeg?auto=compress&cs=tinysrgb&w=600'),
                          ),
                          title: Text(
                            'Joffri',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text(
                            '17 June 2023' ', ' '10.30 AM',
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w500),
                          ),
                          trailing: Icon(
                            Icons.video_call,
                            color: Colors.black,
                          ),
                        ),
                        ListTile(
                          leading: CircleAvatar(
                            backgroundImage: NetworkImage(
                                'https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg?auto=compress&cs=tinysrgb&w=600'),
                          ),
                          title: Text(
                            'Ravina',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text(
                            '17 June 2023' ', ' '10.30 AM',
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w500),
                          ),
                          trailing: Icon(
                            Icons.call,
                            color: Colors.black,
                          ),
                        )
                      ],
                    );
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
