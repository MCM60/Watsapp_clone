import 'package:flutter/material.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  final TextEditingController _searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    _searchController.dispose();
    super.dispose();
  }

  void handleMoreVertIconPressed() {
    // Display the pop-up menu
    showMenu(
      context: context,
      position:
          RelativeRect.fromLTRB(10, 80, 0, 0), // Adjust the position as needed
      items: [
        PopupMenuItem(
          child: Text('New group'),
          value: 1,
        ),
        PopupMenuItem(
          child: Text('New broadcast'),
          value: 2,
        ),
        PopupMenuItem(
          child: Text('Linked devices'),
          value: 3,
        ),
        PopupMenuItem(
          child: Text('Starred messages'),
          value: 4,
        ),
        PopupMenuItem(
          child: Text('Settings'),
          value: 5,
        ),
      ],
      elevation: 8.0,
    ).then((value) {
      if (value != null) {
        // Handle the selected option
        print('Selected option: $value');
      }
    });
  }

  void handleSearchIconPressed() {
    // Focus the text field to show the keyboard
    FocusScope.of(context).requestFocus(FocusNode());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor: Color(0xff075E54),
        title: Text(
          'WhatsApp',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.camera_alt_outlined),
            onPressed: () {
              // Add onPressed logic here
            },
          ),
          SizedBox(width: 10),
          IconButton(
            icon: Icon(Icons.search),
            onPressed: handleSearchIconPressed,
          ),
          SizedBox(width: 10),
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: handleMoreVertIconPressed,
          ),
          SizedBox(width: 10),
        ],
        bottom: TabBar(
          controller: _tabController, // Assign the TabController
          tabs: [
            Tab(
              child: Text(
                'Chats',
                style: TextStyle(fontSize: 20),
              ),
            ),
            Tab(
              child: Text(
                'Status',
                style: TextStyle(fontSize: 20),
              ),
            ),
            Tab(
              child: Text(
                'Calls',
                style: TextStyle(fontSize: 20),
              ),
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          // Chats tab content
          Container(
            color: Colors.white,
            child: ListView(
              children: [
                ListTile(
                  leading: CircleAvatar(
                    radius: 28,
                    backgroundImage: AssetImage('assets/1.jpg'),
                  ),
                  title: Text(
                    'Eng Ahmed Gedi',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    'Nio intee xaafadaa ',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  trailing: Text(
                    '3:05 PM',
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                ),
                // Rest of the list tiles...

                ListTile(
                  leading: CircleAvatar(
                    radius: 28,
                    backgroundImage: AssetImage('assets/2.jpg'),
                  ),
                  title: Text(
                    'Haliimo xfda',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    'xuseen isoomar',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  trailing: Text(
                    '5:17 PM',
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                ),
                ListTile(
                  leading: CircleAvatar(
                    radius: 28,
                    backgroundImage: AssetImage('assets/3.jpg'),
                  ),
                  title: Text(
                    'Bajaajle',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    'ASC saxiib galabta meelaa usocdaa 10saac ii imoow insha allh',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  trailing: Text(
                    '2:05 PM',
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                ),
                ListTile(
                  leading: CircleAvatar(
                    radius: 28,
                    backgroundImage: AssetImage('assets/4.jpg'),
                  ),
                  title: Text(
                    'My brother waa kusosocdaa',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    'haye beri safaraa ahay ticket baydhabo ii jar flight one',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  trailing: Text(
                    '10:05 AM',
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                ),
                ListTile(
                  leading: CircleAvatar(
                    radius: 28,
                    backgroundImage: AssetImage('assets/5.jpg'),
                  ),
                  title: Text(
                    'Salmaan Omar Abdullahi JUST',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    'legend buugii hore iigu soo qaad',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  trailing: Text(
                    '11:10 AM',
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                ),
                ListTile(
                  leading: CircleAvatar(
                    radius: 28,
                    backgroundImage: AssetImage('assets/6.jpg'),
                  ),
                  title: Text(
                    'Abdulqadir Mohamed',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    'Caawa balooniyaa jiro is soo diyaari nio',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  trailing: Text(
                    '6:50 PM',
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                ),
                ListTile(
                  leading: CircleAvatar(
                    radius: 28,
                    backgroundImage: AssetImage('assets/Capture.PNG'),
                  ),
                  title: Text(
                    'Eedo Cadaro Iidow',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    'ASC eedo class baan ku jiraa hadhow baan kusoo wici inshallh',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  trailing: Text(
                    '7:01 AM',
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                ),
                ListTile(
                  leading: CircleAvatar(
                    radius: 28,
                    backgroundImage: AssetImage('assets/reporter.jpg'),
                  ),
                  title: Text(
                    'Yahye Mohmud BestFly',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    'Nio alaabtii maku soo gaartey mise weli waaye?',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  trailing: Text(
                    '8:16 AM',
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                ),
                ListTile(
                  leading: CircleAvatar(
                    radius: 28,
                    backgroundImage: AssetImage('assets/m.jpg'),
                  ),
                  title: Text(
                    'Amino Noor Macalin',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    'ASC walaal see tahay ?',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  trailing: Text(
                    '6:51 PM',
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                ),
                ListTile(
                  leading: CircleAvatar(
                    radius: 28,
                    backgroundImage: AssetImage('assets/1.jpg'),
                  ),
                  title: Text(
                    'Yunis Annan',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    'taliye ii imoow beri meelaa kuu wadaa',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  trailing: Text(
                    '10:25 PM',
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                ),
                ListTile(
                  leading: CircleAvatar(
                    radius: 28,
                    backgroundImage: AssetImage('assets/2.jpg'),
                  ),
                  title: Text(
                    'CA201 JUST',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    'ASC guys Xiisadda Flutter Waa Fasax',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  trailing: Text(
                    '3:05 PM',
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                ),
              ],
            ),
          ),
          // Container(
          //     child: FloatingActionButton(onPressed: (){

          //     }
          //     children: [Icon(Icons.message)],),
          //   ),

          Container(
            color: Colors.white,
            child: ListView(
              children: [
                ListTile(
                  leading: CircleAvatar(
                    radius: 28,
                    backgroundImage: AssetImage('assets/4.jpg'),
                  ),
                  title: Text(
                    'My Status',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    '2 minutes ago',
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                ),
                SizedBox(height: 10),
                // //Padding(padding: EdgeInsets.only(left: 20)),

                // Text('Recent updates', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15 , color: Colors.grey),
                // ),
                ListTile(
                  title: Text(
                    'Recent Updates',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                    ),
                  ),
                ),
                ListTile(
                  leading: CircleAvatar(
                    radius: 28,
                    backgroundImage: AssetImage('assets/6.jpg'),
                  ),
                  title: Text(
                    'Yunis Annan',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    '56 minutes ago',
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                ),
                ListTile(
                  leading: CircleAvatar(
                    radius: 28,
                    backgroundImage: AssetImage('assets/4.jpg'),
                  ),
                  title: Text(
                    'Abdulqadir Abdullahi',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    '1 hour ago',
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                ),
                ListTile(
                  leading: CircleAvatar(
                    radius: 28,
                    backgroundImage: AssetImage('assets/3.jpg'),
                  ),
                  title: Text(
                    'Salman Omar Abdullahi JUST',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    'Today, 9:48 am',
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                ),
              ],
            ),
          ),

          Container(
            color: Colors.white,
            child: ListView(
              children: [
                ListTile(
                  leading: CircleAvatar(
                    radius: 28,
                    backgroundImage: AssetImage('assets/2.jpg'),
                  ),
                  title: Text(
                    'Abdullahi Yusuf',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Row(
                    children: [
                      Icon(
                        Icons.call_received,
                        color: Colors.green,
                        size: 16,
                      ),
                      SizedBox(width: 4),
                      Text(
                        '2 minutes ago',
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                  trailing: IconButton(
                    icon: Icon(Icons.call),
                    onPressed: () {
                      // Add your onPressed logic here to initiate the call
                    },
                  ),
                ),
                ListTile(
                  leading: CircleAvatar(
                    radius: 28,
                    backgroundImage: AssetImage('assets/6.jpg'),
                  ),
                  title: Text(
                    'Yahye BestFly Travel Agency',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Row(
                    children: [
                      Icon(
                        Icons.call_made,
                        color: Colors.red,
                        size: 16,
                      ),
                      SizedBox(width: 4),
                      Text(
                        '5 minutes ago',
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                  trailing: IconButton(
                    icon: Icon(Icons.call),
                    onPressed: () {
                      // Add your onPressed logic here to initiate the call
                    },
                  ),
                ),
                // Add more ListTile widgets for additional calls
              ],
            ),
          ),
          //  Container(
          //         child: FloatingActionButton(onPressed: (){

          //         }
          //         children: [Icon(Icons.call)],),
          //       ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Handle tapping on the new chat button
        },
        backgroundColor: Color(0xFF25D366),
        child: Icon(Icons.message),
      ),
    );
  }
}
