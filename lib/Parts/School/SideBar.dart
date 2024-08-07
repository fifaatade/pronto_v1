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
                    'Pronto School',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                    ),
                  ),
                ),
                Text(
                  'Parce-que nos enfants méritent ce qu\'il y a de mieux ...',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            leading: Icon(Icons.calendar_month_outlined, color:Color(0xFFF00020)),
            title: Text('Mes abonnements'),
            onTap: () {
              // Action à effectuer lors du clic sur l'élément Home
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(Icons.create_new_folder_outlined, color: Color(0xFFF00020),),
            title: Text('Nouvel abonnement'),
            onTap: () {
              // Action à effectuer lors du clic sur l'élément Settings
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(Icons.inventory_outlined, color: Color(0xFFF00020),),
            title: Text('Facturation'),
            onTap: () {
              // Action à effectuer lors du clic sur l'élément Settings
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(Icons.info, color: Color(0xFFF00020),),
            title: Text('A propos de Pronto School'),
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
