import 'package:flutter/material.dart';

class Index extends StatefulWidget {
  const Index({super.key});

  @override
  State<Index> createState() => _IndexState();
}

class _IndexState extends State<Index> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("index page")),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(50, 30, 30, 30),
        child: Column(
          children: [
            Container(
              
              decoration:const BoxDecoration(
              
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            
            colors: [
              Color(0xFF000000), // Black color
              Color(0xFF3533cd), // Blue color
              
            ],
            
          ),
          
        ),
        
              width: 300,
              height: 550,

              child: const Form(
                  child: SingleChildScrollView(
                child: Column(
                  children: [
                     Text("ອີເມວ",style:TextStyle(fontSize: 20)),

                  ]
                  ),
              )),
            )
          ],
        ),
      ),
    );
  }
}
