import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dashboard"),
        backgroundColor: const Color.fromARGB(255, 78, 194, 253),
        leading: Builder(builder: (context) {
          return IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              icon: Icon(
                Icons.menu,
                color: Colors.white,
              ));
        }),
        actions: [
          TextButton(onPressed:() {}, child: Text("Click Me"
          )
          ),
          IconButton(
          onPressed: () {}, 
          icon: Icon(
            Icons.people,
            color: Colors.white,

          ),
          ),
        ],
        elevation: 10,
        shadowColor: Colors.red,
      ),
      drawer: Drawer(
        backgroundColor: Colors.indigo,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              UserAccountsDrawerHeader(
                accountName: Text("Ajay Shrestha"),
               accountEmail: Text("jajay72@gmail.com"),
               currentAccountPicture: Image.network("https://plus.unsplash.com/premium_photo-1675107359574-e3ba5f47a1a2?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxfHx8ZW58MHx8fHx8"),
               otherAccountsPictures: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.red,
                    shape: BoxShape.circle,
                  ),
                )
               ],
               ),
               Card(
                 child: ListTile(
                  title: Text("Home Page"),
                  subtitle: Text("Go to homepage"),
                  leading: Icon(Icons.home),
                  trailing: Icon(Icons.visibility),
                  onTap: () {
                    print("Home page menu clicked");
                  },
                 ),
               ),
               Card(
                 child: ExpansionTile(
                  title: Text("Other Page"),
                  subtitle: Text("Go to homepage"),
                  leading: Icon(Icons.home),
                  children: [ 
                    Text("Expanded Data"),
                    Container(
                      height: 1000,
                      color: Colors.red,
                    )
                  ],
                  
                 ),
               ),
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
              height: 300,
              width: 350,
              //color: Colors.cyan,
              decoration: BoxDecoration(
                color: Colors.red,
                // borderRadius: BorderRadius.all(
                //   Radius.elliptical(30, 100),
                // ),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  bottomLeft: Radius.circular(40),
                  bottomRight: Radius.circular(60),
                ),
                border: Border.all(
                    color: Colors.yellow, width: 5, style: BorderStyle.solid),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.6),
                    offset: Offset(10, 10),
                    blurRadius: 10,
                    spreadRadius: 5,
                  ),
                  BoxShadow(
                    color: Colors.cyan,
                    offset: Offset(-20, 20),
                    blurRadius: 5,
                    spreadRadius: 20,
                  )
                ],
              ),
              //alignment: Alignment.center,
              padding: EdgeInsets.all(30),
              margin: EdgeInsets.only(
                top: 20,
                left: 20,
              ),
              transform: Matrix4.rotationY(0.1),
              child: Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  color: Colors.cyan,
                  shape: BoxShape.circle,
                ),
              )),
        ],
      ),
    );
  }
}

