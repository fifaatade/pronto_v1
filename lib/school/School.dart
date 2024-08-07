import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:map/Parts/School/SideBar.dart';

class School extends StatefulWidget {
  @override
  _SchoolState createState() => _SchoolState();
}

class _SchoolState extends State<School> {
  void initState() {
    super.initState();
  }

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: Sidebar(),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xFFF00020),
        title: Text(
          'Gérer les abonnements Pronto-School',
          style: TextStyle(
            fontSize: 15.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        // Ajoutez l'icône de menu pour afficher le Sidebar
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {
            _scaffoldKey.currentState?.openDrawer();
          },
        ),
      ),
      key: _scaffoldKey,
      body: SingleChildScrollView(
        child: Column(
          children: [

            Container(
              color: Color(0xFFF00020), // Couleur de la partie supérieure
              height: 200, // Hauteur de la partie supérieure
              child: Padding(
                padding: const EdgeInsets.only(left: 12.0),
                child: Column(
                  children: [
                    SizedBox(height: 22),
                    Center(
                      //padding: const EdgeInsets.only(top: 0.0),
                      child: Text(
                        'Mes abonnements',
                        style: TextStyle(
                          fontSize: 44,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              color: Colors.white, // Couleur de la partie inférieure
              child: Center(
                child: Container(
                  padding: EdgeInsets.all(8),
                  child: Transform.translate(
                    offset: Offset(0, -30),
                    child: Card(
                      elevation: 4,
                      child: Padding(
                        padding: EdgeInsets.all(8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.dangerous,
                                  color: Colors.blue,
                                ),
                                SizedBox(width: 8),
                                Text(
                                  'Lieu de départ',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 8),
                            Text(
                              'Adresse de départ',
                              style: TextStyle(
                                fontSize: 14,
                              ),
                            ),
                            SizedBox(height: 16),
                            Row(
                              children: [
                                Icon(Icons.do_not_disturb_on_total_silence),
                                SizedBox(width: 8),
                                Text(
                                  'Lieu d\'arrivée',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 8),
                            Text(
                              'Adresse d\'arrivée',
                              style: TextStyle(
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
