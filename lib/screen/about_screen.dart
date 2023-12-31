import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kalamazoo/utils/util.dart';
import 'package:kalamazoo/utils/navigation_router.dart';
import 'package:kalamazoo/utils/color.dart';

class AboutScreen extends StatefulWidget {
  const AboutScreen({super.key});

  @override
  State<AboutScreen> createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  @override
  Widget build(BuildContext context) {
    List<String> dishes = [
      "Steak",
      "Barbecue Ribs",
      "Steak",
      "Steak",
    ];

    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SvgPicture.asset(
                'assets/background.svg',
                width: MediaQuery.of(context).size.width,
              ),
              Container(
                width: MediaQuery.of(context).size.height * 0.25,
                height: MediaQuery.of(context).size.height * 0.4,
                decoration: BoxDecoration(
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                      color: CustomColor.primaryColor.withOpacity(0.1),
                      blurRadius: 30.0,
                    ),
                  ],
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.zero,
                      topRight:
                          Radius.circular(MediaQuery.of(context).size.width),
                      bottomLeft: Radius.zero,
                      bottomRight:
                          Radius.circular(MediaQuery.of(context).size.width)),
                ),
              ),
            ],
          ),
          Positioned(
            left: 0,
            bottom: 0,
            child: Container(
              width: MediaQuery.of(context).size.height * 0.4,
              height: MediaQuery.of(context).size.height * 0.4,
              decoration: BoxDecoration(
                boxShadow: <BoxShadow>[
                  BoxShadow(
                    color: CustomColor.primaryColor.withOpacity(0.1),
                    blurRadius: 30.0,
                  ),
                ],
                borderRadius: BorderRadius.only(
                    topLeft: Radius.zero,
                    topRight:
                        Radius.circular(MediaQuery.of(context).size.width),
                    bottomLeft: Radius.zero,
                    bottomRight: Radius.zero),
              ),
            ),
          ),
          ListView(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: Util.mainPadding * 0.5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    IconButton(
                      icon: const Icon(Icons.arrow_back_ios),
                      onPressed: () {
                        NavigationRouter.back(context);
                      },
                    ),
                    const Text(
                      Util.about,
                      style: TextStyle(
                        color: CustomColor.primaryColor,
                        fontSize: 22.0,
                      ),
                    ),
                    const SizedBox(
                      width: Util.mainPadding,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: Util.mainPadding, vertical: 10),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(
                      'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: Util.mainPadding, vertical: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      'Royal Dine Restaurant',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 4),
                      decoration: BoxDecoration(
                        color: CustomColor.activeColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        children: const [
                          Text(
                            '5.3',
                            style: TextStyle(color: Colors.white, fontSize: 12),
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.white,
                            size: 12,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              ListTile(
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: Util.mainPadding),
                isThreeLine: false,
                leading: Container(
                  width: 50,
                  alignment: const Alignment(0, 0),
                  decoration: const BoxDecoration(
                      color: Colors.white, shape: BoxShape.circle),
                  child: const Icon(Icons.phone_in_talk_outlined),
                ),
                title: const Text(
                  'Phone',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
                ),
                subtitle: const Text(
                  '0123456789',
                  style: TextStyle(
                      fontSize: 12.0, color: CustomColor.textDetailColor),
                ),
              ),
              ListTile(
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: Util.mainPadding),
                isThreeLine: false,
                leading: Container(
                  width: 50,
                  alignment: const Alignment(0, 0),
                  decoration: const BoxDecoration(
                      color: Colors.white, shape: BoxShape.circle),
                  child: const Icon(Icons.email_outlined),
                ),
                title: const Text(
                  'E-mail',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
                ),
                subtitle: const Text(
                  'royaldine247@gmail.com',
                  style: TextStyle(
                      fontSize: 12.0, color: CustomColor.textDetailColor),
                ),
              ),
              ListTile(
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: Util.mainPadding),
                isThreeLine: false,
                leading: Container(
                  width: 50,
                  alignment: const Alignment(0, 0),
                  decoration: const BoxDecoration(
                      color: Colors.white, shape: BoxShape.circle),
                  child: const Icon(Icons.location_on_outlined),
                ),
                trailing: TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Open Map',
                      style: TextStyle(color: CustomColor.primaryColor),
                    )),
                title: const Text(
                  'Location',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
                ),
                subtitle: const Text(
                  'Kalamazoo, Michigan, USA',
                  style: TextStyle(
                      fontSize: 12.0, color: CustomColor.textDetailColor),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: Util.mainPadding, vertical: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      'Top Dishes',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    TextButton(
                        onPressed: () {
                          NavigationRouter.switchToMenu(context);
                        },
                        child: const Text(
                          'Full menu',
                          style: TextStyle(color: CustomColor.primaryColor),
                        )),
                  ],
                ),
              ),
              SizedBox(
                  height: 160,
                  child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: dishes.map((dish) {
                          return box(dish, Colors.white);
                        }).toList(),
                      ))),
            ],
          )
        ],
      ),
    );
  }

  Widget box(String title, Color backgroundcolor) {
    return Container(
        margin: const EdgeInsets.only(left: 8, right: 8, bottom: 20),
        padding: const EdgeInsets.symmetric(vertical: 10),
        width: 150,
        decoration: BoxDecoration(
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: CustomColor.primaryColor.withOpacity(0.2),
              blurRadius: 8,
            ),
          ],
          borderRadius: BorderRadius.circular(10),
          color: backgroundcolor,
        ),
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset('assets/group.png'),
            Text(title, style: const TextStyle(fontSize: 18))
          ],
        ));
  }
}
