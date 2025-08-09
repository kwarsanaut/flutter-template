## lib/screens/profile_screen.dart
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        children: [
          SizedBox(height: 32),
          CircleAvatar(
            radius: 50,
            backgroundColor: Theme.of(context).primaryColor.withOpacity(0.1),
            child: Icon(
              Icons.person,
              size: 50,
              color: Theme.of(context).primaryColor,
            ),
          ),
          SizedBox(height: 24),
          Card(
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                children: [
                  ListTile(
                    leading: Icon(Icons.person_outline),
                    title: Text('Name'),
                    subtitle: Text('Flutter Developer'),
                  ),
                  ListTile(
                    leading: Icon(Icons.email_outlined),
                    title: Text('Email'),
                    subtitle: Text('developer@flutter.dev'),
                  ),
                  ListTile(
                    leading: Icon(Icons.phone_outlined),
                    title: Text('Phone'),
                    subtitle: Text('+1 234 567 8900'),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 24),
          Card(
            child: Column(
              children: [
                ListTile(
                  leading: Icon(Icons.settings_outlined),
                  title: Text('Settings'),
                  trailing: Icon(Icons.chevron_right),
                  onTap: () {},
                ),
                ListTile(
                  leading: Icon(Icons.help_outline),
                  title: Text('Help & Support'),
                  trailing: Icon(Icons.chevron_right),
                  onTap: () {},
                ),
                ListTile(
                  leading: Icon(Icons.info_outline),
                  title: Text('About'),
                  trailing: Icon(Icons.chevron_right),
                  onTap: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
