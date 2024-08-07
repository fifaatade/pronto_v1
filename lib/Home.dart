import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:map/SideBarPronto.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  void initState() {
    super.initState();
  }


  final List<String> images = [
    'assets/images/pub1.png',
    'assets/images/baniere1.png',
    'assets/images/pub1.png',
    // Ajoutez autant d'URLs d'images que nécessaire
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SideBarPronto(),
      appBar: AppBar(
        //backgroundColor: Color(0xFFF00020),
        elevation: 0,
        title: Align(
          alignment: Alignment.center,
          child:
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(width: 0),
              Padding(
                padding: const EdgeInsets.only(top: 14.0),
                child: Image.asset(
                  'assets/images/logo_pronto.png',
                  height: 36,
                ),
              ),
              Container(
                decoration: ShapeDecoration(
                  color: Color(0xFFF00020),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                ),
                child: IconButton(
                  icon: Icon(Icons.notifications_active),
                  color: Colors.white,
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ),
        leading: IconButton(
          icon: Container(
              width: 40,
              height: 40,
              padding: const EdgeInsets.all(8),
              clipBehavior: Clip.antiAlias,
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    width: 1,
                    strokeAlign: BorderSide.strokeAlignOutside,
                    color: Color(0xFFB1B1B1),
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: Icon(Icons.menu)
          ),
          onPressed: () {
            _scaffoldKey.currentState?.openDrawer();
          },
        ),
      ),
      key: _scaffoldKey,
      backgroundColor: Colors.white.withOpacity(0.99),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              //color: Color(0xFFF00020), // Couleur de la partie supérieure
              //height: 280, // Hauteur de la partie supérieure
              child: Column(
                children: [
                  Center(
                    //padding: const EdgeInsets.only(top: 0.0),
                    child: Column(
                      children: [
                        SizedBox(height: 9),
                        Container(
                          //width: 361,
                          height: 48,
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: 48,
                                      height: 48,
                                      child: Stack(
                                        children: [
                                          Positioned(
                                            left: 0,
                                            top: 0,
                                            child: Container(
                                              width: 48,
                                              height: 48,
                                              decoration: ShapeDecoration(
                                                image: DecorationImage(
                                                  image: NetworkImage("https://via.placeholder.com/48x48"),
                                                  fit: BoxFit.fill,
                                                ),
                                                shape: OvalBorder(),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(width: 8),
                                    Text(
                                      'Bienvenu  Constantin',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 18,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w600,
                                        height: 0.11,
                                      ),
                                    )
                                  ],
                                ),
                              ),

                            ],
                          ),
                        ),
                        SizedBox(height: 9),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            decoration: ShapeDecoration(
                              color: Colors.grey.withOpacity(0.25),

                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                            ),
                            //width: 339,
                            height: 92,
                            padding: const EdgeInsets.symmetric(vertical: 22),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Column(
                                    //mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    //crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      /*Text(
                                        'Mon portefeuille',
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w400,

                                        ),
                                      ),*/
                                      Text(
                                        '14,235.34 XOF',
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w600,

                                        ),
                                      ),

                                      /*Text.rich(
                                        TextSpan(
                                          text: '14,235.34 XOF',
                                          style: TextStyle(
                                            color: Color(0xFF2F2F2F),
                                            fontSize: 20,
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w600,

                                          ),
                                        ),
                                        textAlign: TextAlign.center,
                                      ),*/
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 8.0),
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
                                    decoration: ShapeDecoration(
                                      color: const Color(0xFFF00020),
                                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                                    ),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          width: 24,
                                          height: 24,
                                          child: Icon(Icons.add,color: Colors.white,),
                                        ),
                                        Text(
                                          'Recharger',
                                          style: TextStyle(
                                            color: Color(0xFFFDFDFD),
                                            fontSize: 16,
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w400,
                                            height: 0,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 18),

            Card(
              elevation: 5,
              child: Column(
                children: [
                  Center(
                    child: CarouselSlider(
                      options: CarouselOptions(
                        height: 130.0,

                        autoPlay: true,
                        //aspectRatio: 16/9,
                        enlargeCenterPage: true,
                      ),
                      items: images.map((String url) {
                        print(url);
                        return Builder(
                          builder: (BuildContext context) {
                            return Container(
                              width: MediaQuery.of(context).size.width,
                              margin: EdgeInsets.symmetric(horizontal: 5.0),
                              decoration: BoxDecoration(
                                color: Colors.amber,
                              ),
                              child: Image.asset(
                                url,
                                fit: BoxFit.cover,
                              ),
                            );
                          },
                        );
                      }).toList(),
                    ),
                  ),
                  /*Image.asset(
                    'assets/images/pub1.png', // Chemin vers l'image dans les assets
                    fit: BoxFit.cover,
                  ),*/

                  /*Center(
                    child: CarouselSlider(
                      options: CarouselOptions(
                        height: 200,
                        autoPlay: true,
                        enlargeCenterPage: true,
                        aspectRatio: 16 / 9,
                        autoPlayCurve: Curves.fastOutSlowIn,
                        enableInfiniteScroll: true,
                        autoPlayAnimationDuration: Duration(milliseconds: 8000),
                        viewportFraction: 0.8,
                      ),
                      items: images.map((image) {
                        return Builder(
                          builder: (BuildContext context) {
                            return Container(
                              width: MediaQuery.of(context).size.width,
                              margin: EdgeInsets.symmetric(horizontal: 5.0),
                              decoration: BoxDecoration(
                                color: Colors.grey,
                              ),
                              child: Image.network(
                                image,
                                fit: BoxFit.cover,
                              ),
                            );
                          },
                        );
                      }).toList(),
                    ),
                  ),*/
                ],
              ),
            ),

            Center(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text(
                          'Services Pronto',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                            height: 0,
                          ),
                        )
                        ),
                      ),

                    Row(
                      children: [
                        _buildCard(context, 'assets/images/icones/courses.png',
                            'Courses', '', '/course_choice_depart'),
                        _buildCard(context, 'assets/images/icones/Livraison.png',
                            'Livraisons', '', 'home'),
                        _buildCard(context, 'assets/images/icones/school.png',
                            'Pronto School', '', '/school'),

                      ],
                    ),
                    Row(
                      children: [
                        _buildCard(
                            context,
                            'assets/images/icones/demenagement.png',
                            'Déménagements','','home'),
                        _buildCard(
                            context,
                            'assets/images/icones/reservation.png',
                            'Réservations','','home'),
                        _buildCard(
                            context,
                            'assets/images/icones/tricycle.png',
                            'Tricycle','','home'),
                      ],
                    ),
                    Row(
                      children: [
                        _buildCard(
                            context,
                            'assets/images/icones/location.png',
                            'Location','','home'),
                        _buildCard(
                            context,
                            'assets/images/icones/business.png',
                            'Business','','home'),

                      ],
                    ),

                  ],
                ),
              ),
            ),
            SizedBox(height: 19),
            /*Card(
              elevation: 5,
              child: Column(
                children: [
                  Image.asset(
                    'assets/images/baniere1.png', // Chemin vers l'image dans les assets
                    fit: BoxFit.cover,
                  ),

                ],
              ),
            ),*/



            SizedBox(height: 19),
          ],
        ),
      ),
    );
  }
}

Widget _buildCard(BuildContext context, String imageUrl, String title,
    String description, String route) {
  double cardWidth = MediaQuery.of(context).size.width / 2.3;
  return InkWell(
    onTap: () {
      // Action à effectuer lors du clic sur la card
      Get.toNamed(route);
    },
    child:
    Padding(
      padding: const EdgeInsets.all(8.0),
      child:
      /*Container(
        width: 111,
        height: 109,
        clipBehavior: Clip.antiAlias,
        decoration: ShapeDecoration(
          color: Color(0xFFF00020),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          shadows: [
            BoxShadow(
              color: Color(0x21000000),
              blurRadius: 29,
              offset: Offset(0, 4),
              spreadRadius: 0,
            )
          ],
        ),
        child: Stack(
          children: [
            Positioned(
              left: -99,
              top: 54,
              child: Container(
                width: 309,
                height: 215,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: OvalBorder(),
                ),
              ),
            ),
            Positioned(
              left: 4,
              top: 22,
              child: Text(
                title,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                  height: 0.07,
                ),
              ),
            ),
            Positioned(
              left: 34,
              top: 61,
              child: Container(
                width: 40,
                height: 40,
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(),
                child: Stack(
                  children: [
                    Positioned(
                      left: 0.62,
                      top: 1.25,
                      child: Container(
                        width: 38.13,
                        height: 37.54,
                        child: Stack(children: [
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: SizedBox(
                              width: 46,
                              height: 41.14,
                              child: Image.asset(
                                imageUrl,
                                fit: BoxFit.fill,
                                height: 100,
                                width: 100,
                              ),
                            ),
                          ),
                        ]),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),*/
      Column(
        children: [
          Container(
            width: 111,
            height: 109,
            clipBehavior: Clip.antiAlias,
            decoration: ShapeDecoration(
              color: Color(0xFFF3F3F3),
              shape: RoundedRectangleBorder(
                side: BorderSide(width: 1, color: Color(0xFFCECECE)),
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            child: Stack(
              children: [
                Positioned(
                  left: 7,
                  top: 17,
                  child: Text(
                    title,
                    style: TextStyle(
                      color: Color(0xFF2F2F2F),
                      fontSize: 12,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                      height: 0.09,
                    ),
                  ),
                ),
                Positioned(
                  left: 46,
                  top: 44,
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 40,
                          height: 40,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: 40,
                                  height: 40,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(imageUrl),
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      )
    ),

    /*Card(
      elevation: 1.5, // Pour éviter une ombre par défaut
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      margin: const EdgeInsets.all(8.0),

      child: SizedBox(

        width: cardWidth,
        height: 85,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Color(0x0D000000),
                offset: Offset(0, 5),
                blurRadius: 40,
                spreadRadius: 0,
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: SizedBox(
                  width: 46,
                  height: 41.14,
                  child: Image.asset(
                    imageUrl,
                    fit: BoxFit.fill,
                    height: 100,
                    width: 100,
                  ),
                ),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                          color: Color(0xFF2F2F2F),
                          fontWeight: FontWeight.bold,
                          fontSize: 14),
                    ),
                    Text(
                      description,
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 10.0,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    ),*/
  );
}
