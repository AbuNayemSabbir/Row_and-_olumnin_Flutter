import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Row & Column'),
      ),
      body: Container(
        height: 120,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 100,
                width: 100,
                color: Colors.blue,
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("User Name",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                  Text("User subtitle",style: TextStyle(fontSize: 16),),
                ],
              ),
            )
          ],
        ),
      ),
      drawer: const Drawer(
        backgroundColor: Colors.white,
        child: Column(
         children: [
           Align(
             alignment: Alignment.centerLeft,
             child: DrawerHeader(
                 child: Text("Drawer Example",)),
           ),
           Row(
             children: [
               Padding(
                 padding: EdgeInsets.all(8.0),
                 child: Icon(Icons.settings),
               ),
               Padding(
                 padding: EdgeInsets.all(8.0),
                 child: Text("Settings"),
               )
             ],
           ),
           Row(
             children: [
               Padding(
                 padding: EdgeInsets.all(8.0),
                 child: Icon(Icons.add_business),
               ),
               Padding(
                 padding: EdgeInsets.all(8.0),
                 child: Text("About"),
               )
             ],
           ),
         ],
        ),
      ),
    );
  }
}
