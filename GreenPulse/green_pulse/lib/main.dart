import 'package:flutter/material.dart';
import 'Faq.dart';
import 'carbon_calculator.dart';
import 'Eco_Friendly_Tips_Page.dart';
import 'challenges.dart';
import 'news_feed.dart';
import 'weather_model.dart'; 
import 'repo.dart';
// import 'MyHomePageContent.dart';// Import the news feed file

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme:
            ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 46, 95, 18)),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(title: 'Green Pulse'),
      routes: {
        '/eco_tips': (context) => EcoFriendlyTipsPage(),
        '/faq': (context) => FAQPage(),
        '/carbon_calculator': (context) => CarbonCalculatorPage(),
        '/challenges': (context) => ChallengesPage(),
        '/news_feed': (context) => NewsFeedPage(), 
        // '/Home' : (context) => MyHomePageContent(),// Add the route for the News Feed page
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    MyHomePageContent(),
    ChallengesPage(),
    CarbonCalculatorPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
        actions: [
          // Add an icon button to navigate to the News Feed page
          IconButton(
            icon: Icon(Icons.article),
            onPressed: () {
              Navigator.pushNamed(context, '/news_feed');
            },
          ),
        ],
      ),
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            Container(
              color: Color.fromARGB(255, 218, 131, 74).withOpacity(0.8),
              height: 60,
              alignment: Alignment.center,
              child: Text(
                'Menu',
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
            ),
            ListTile(
              leading: Icon(Icons.lightbulb),
              title: Text('Eco-Friendly Tips'),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/eco_tips');
              },
            ),
            ListTile(
              leading: Icon(Icons.help),
              title: Text('FAQ'),
              onTap: () {
                Navigator.pushNamed(context, '/faq');
              },
            ),
            ListTile(
              leading: Icon(Icons.star),
              title: Text('New Item 1'),
              onTap: () {
                // Handle new item 1 navigation
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('New Item 2'),
              onTap: () {
                // Handle new item 2 navigation
              },
            ),
          ],
        ),
      ),
      // body: _pages[_selectedIndex],
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/green.png'),
            fit: BoxFit.cover,
          ),
        ),
        
        child: _pages[_selectedIndex],
        // child: _pages[_selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star),
            label: 'Challenges',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calculate),
            label: 'Calculator',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}


class MyHomePageContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      
    );
  }
}
