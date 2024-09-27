import 'package:flutter/material.dart';

class DrawerCustom extends StatelessWidget {
  const DrawerCustom({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const UserAccountsDrawerHeader(
            accountName: Text('Mustafa Khan'),
            accountEmail: Text('Welcome to quick Medical Store'),
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage('assets/images/myself.png'),
            ),
            decoration: BoxDecoration(color: Colors.blue),
          ),
          ListTile(
            leading: const Icon(Icons.edit, color: Colors.blue),
            title: const Text('Edit Profile', style: TextStyle(fontSize: 16)),
            onTap: () {
            
            },
            trailing: const Icon(Icons.arrow_forward_ios, size: 16),
          ),
          ListTile(
            leading: const Icon(Icons.list_alt, color: Colors.blue),
            title: const Text('My Orders', style: TextStyle(fontSize: 16)),
            onTap: () {
             
            },
            trailing: const Icon(Icons.arrow_forward_ios, size: 16),
          ),
          ListTile(
            leading: const Icon(Icons.access_time, color: Colors.blue),
            title: const Text('Billing', style: TextStyle(fontSize: 16)),
            onTap: () {
        
            },
            trailing: const Icon(Icons.arrow_forward_ios, size: 16),
          ),
          ListTile(
            leading: const Icon(Icons.help_outline, color: Colors.blue),
            title: const Text('FAQ', style: TextStyle(fontSize: 16)),
            onTap: () {
            
            },
            trailing: const Icon(Icons.arrow_forward_ios, size: 16),
          ),
        ],
      ),
    );
  }
}
