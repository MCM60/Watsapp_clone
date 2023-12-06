import 'package:flutter/material.dart';
import 'package:watsapp_clone/pages/chartpage.dart';

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
      home: DefaultTabController(
        length: 4, // Number of tabs
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Color(0xFF075E54),
            elevation: 0,
            title: Text(
              'WhatsApp',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            actions: [
              IconButton(
                icon: Icon(Icons.camera_alt),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.search),
                onPressed: () {},
              ),
              PopupMenuButton(
                itemBuilder: (context) => [
                  PopupMenuItem(
                    child: Text('New group'),
                  ),
                  PopupMenuItem(
                    child: Text('New broadcast'),
                  ),
                  PopupMenuItem(
                    child: Text('Linked devices'),
                  ),
                  PopupMenuItem(
                    child: Text('starred messages'),
                  ),
                  PopupMenuItem(
                    child: Text('Settings'),
                  ),
                ],
              ),
            ],
            bottom: const TabBar(indicatorColor: Colors.white, tabs: [
              Tab(
                icon: Icon(Icons.people_outline),
              ),
              Tab(
                text: 'Chats',
              ),
              Tab(
                text: 'Status',
              ),
              Tab(
                text: 'Calls',
              ),
            ]),
          ),
          body: TabBarView(
            children: [
              Center(child: Text("Home screen")),
              Chartpage(),
              Center(child: Text("Calls screen")),
              Center(child: Text("Calls screen")),
            ],
          ),
        ),
      ),
    );
  }
}
