import 'package:flutter/material.dart';

class Booking extends StatefulWidget {
  const Booking({super.key});

  @override
  State<Booking> createState() => _BookingState();
}

class _BookingState extends State<Booking> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Quick table'),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.tune),
            onPressed: () {},
          ),
          const CircleAvatar(
            backgroundImage: NetworkImage('https://via.placeholder.com/150'),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 32.0),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 8.0,
                  mainAxisSpacing: 8.0,
                ),
                itemCount: 10 ,
                itemBuilder: (context, index) {
                  return Card(
                    child: Column(
                      children: [
                        Expanded(
                          child: Image.asset(
                            ("assets/images/sixpack.jpg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                         const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Text('Quick table'),
                              Text('120 000 ₭'),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      
     bottomNavigationBar: BottomNavigationBar(
  items: const [
    BottomNavigationBarItem(
      icon: Icon(Icons.home),
      label: 'Home',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.search),
      label: 'Categories',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.menu),
      label: 'Profile',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.person),
      label: 'Menu',
    ),
  ],
  //currentIndex: _UrltableState, // This would be the index of the selected item
  selectedItemColor: Color.fromARGB(255, 80, 72, 72), // Color for the selected item
  unselectedItemColor: const Color.fromARGB(255, 82, 73, 73), // Color for the unselected items
  onTap: (index) {
    setState(() {
     // _UrltableState = index; // Update the selected index
    });
  },
),

      backgroundColor: const Color.fromARGB(255, 10, 48, 110), // Set the background color to white
    );
  }
}