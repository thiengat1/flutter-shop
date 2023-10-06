import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(25),
      child: Row(children: [
        const Icon(Icons.sort, size: 30, color: Color(0xff4c53a5)),
        const Padding(
          padding: EdgeInsets.only(left: 20),
          child: Text(
            "Lewis Shop",
            style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.bold,
                color: Color(0xff4c53a5)),
          ),
        ),
        const Spacer(),
        badges.Badge(
          onTap: () {},
          badgeContent: const Text(
            '3',
            style: TextStyle(color: Colors.white),
          ),
          child: InkWell(
            onTap: () {
              Navigator.pushNamed(context, 'cartPage');
            },
            child: const Icon(
              Icons.shopping_bag_outlined,
              size: 30,
              color: Color(0xff4c53a5),
            ),
          ),
        )
      ]),
    );
  }
}
