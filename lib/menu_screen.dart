import 'package:flutter/material.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text("SaSa"),
              accountEmail: Text("SaSa.com"),
              currentAccountPicture: CircleAvatar(
                /// ClipOval make image Circular
                child: ClipOval(
                  child: Image.asset(
                    "images/face.jpg",
                    width: 90,
                    height: 90,
                    fit:BoxFit.cover ,
                    ),
                ),
              ),
            decoration: const BoxDecoration(
                image: DecorationImage(
                image: AssetImage("images/default.jpg"),
            fit:BoxFit.fill
            ),
            
            ),
            ),
       ListTile(
          leading: const Icon(Icons.favorite),
          title: const Text("Favorite"),
          onTap: (() {}),
        ),
       ListTile(
          leading: const Icon(Icons.scoreboard),
          title: const Text("Score"),
          onTap: (() {}),
        ),
       const Divider(),
       ListTile(
          leading: const Icon(Icons.people),
          title: const Text("Friends"),
          onTap: (() {}),
        ),
       ListTile(
          leading: const Icon(Icons.share),
          title: const Text("Share"),
          onTap: (() {}),
        ),
        
       const Divider(),
       ListTile(
          leading: const Icon(Icons.settings),
          title: const Text("Setting"),
          onTap: (() {}),
        ),
       ListTile(
          leading: const Icon(Icons.description),
          title: const Text("Policies"),
          onTap: (() {}),
        ),
      
       ListTile(
          leading: const Icon(Icons.logout),
          title: const Text("Sign out"),
          onTap: (() {}),
        ),
      
        ],
      ),
    );
  }
}