import 'package:flutter/material.dart';
import 'package:team/core/constant/app_string.dart';
import 'package:team/core/constant/link_photo.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: const Text(AppString.nameProfile),
              accountEmail: const Text(AppString.email),
              currentAccountPicture: CircleAvatar(
                /// ClipOval make image Circular
                child: ClipOval(
                  child: Image.asset(
                    AppLinkImage.profileImage,
                    width: 90,
                    height: 90,
                    fit:BoxFit.cover ,
                    ),
                ),
              ),
            decoration: const BoxDecoration(
                image: DecorationImage(
                image: AssetImage(
                    AppLinkImage.backgroundImage),
            fit:BoxFit.fill
            ),
            
            ),
            ),
       ListTile(
          leading: const Icon(Icons.favorite),
          title: const Text(AppString.favorite),
          onTap: (() {}),
        ),
       ListTile(
          leading: const Icon(Icons.scoreboard),
          title: const Text(AppString.score),
          onTap: (() {}),
        ),
       const Divider(),
       ListTile(
          leading: const Icon(Icons.people),
          title: const Text(AppString.friends),
          onTap: (() {}),
        ),
       ListTile(
          leading: const Icon(Icons.share),
          title: const Text(AppString.share),
          onTap: (() {}),
        ),
        
       const Divider(),
       ListTile(
          leading: const Icon(Icons.settings),
          title: const Text(AppString.setting),
          onTap: (() {}),
        ),
       ListTile(
          leading: const Icon(Icons.description),
          title: const Text(AppString.policies),
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