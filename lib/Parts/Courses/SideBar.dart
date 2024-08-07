import 'package:flutter/material.dart';

class Sidebar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(

            decoration: BoxDecoration(
              color: Color(0xFFF00020),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 45.0),
                  child: Text(
                    'Pronto Courses',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                    ),
                  ),
                ),
                Text(
                  'Déplacez-vous en toute sécurité ',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            leading: Icon(Icons.history, color:Color(0xFFF00020)),
            title: Text('Historique de mes activités'),
            onTap: () {
              // Action à effectuer lors du clic sur l'élément Home
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(Icons.bookmark_add_outlined, color: Color(0xFFF00020),),
            title: Text('Code de réduction'),
            onTap: () {
              // Action à effectuer lors du clic sur l'élément Settings
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(Icons.supervised_user_circle, color: Color(0xFFF00020),),
            title: Text('Parainage'),
            onTap: () {
              // Action à effectuer lors du clic sur l'élément Settings
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(Icons.info, color: Color(0xFFF00020),),
            title: Text('A propos de Pronto Courses'),
            onTap: () {
              // Action à effectuer lors du clic sur l'élément About
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
