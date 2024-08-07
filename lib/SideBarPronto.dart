import 'package:flutter/material.dart';

class SideBarPronto extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(

            decoration: BoxDecoration(
              color: Color(0xFFF00020),
            ),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 45.0),
                  child: Text(
                    'Pronto',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                    ),
                  ),
                ),
                Text(
                  'Un service de luxe pour vous servir',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            leading: const Icon(Icons.account_balance_wallet_outlined, color:Color(0xFFF00020)),
            title: const Text('Recharge'),
            onTap: () {
              // Action à effectuer lors du clic sur l'élément Home
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.sync, color: Color(0xFFF00020),),
            title: const Text('Historique'),
            onTap: () {
              // Action à effectuer lors du clic sur l'élément Settings
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.question_mark, color: Color(0xFFF00020),),
            title: const Text('FAQ'),
            onTap: () {
              // Action à effectuer lors du clic sur l'élément Settings
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.info, color: Color(0xFFF00020),),
            title: const Text('A propos de Pronto'),
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
