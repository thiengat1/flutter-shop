import 'package:flutter/material.dart';
import 'package:flutter_shop/widgets/CartAppBar.dart';
import 'package:flutter_shop/widgets/CartBottomNavBar.dart';
import 'package:flutter_shop/widgets/CartItemSamples.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const CartAppBar(),
          Container(
            height: 700,
            padding: const EdgeInsets.only(top: 15),
            decoration: const BoxDecoration(
                color: Color(0xFFEDECF2),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(35),
                    topRight: Radius.circular(35))),
            child: Column(children: [
              const CartItemSamples(),
              Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(10)),
                margin:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                padding: const EdgeInsets.all(10),
                child: Row(children: [
                  Container(
                    decoration: BoxDecoration(
                        color: const Color(0xff4c53a5),
                        borderRadius: BorderRadius.circular(20)),
                    child: const Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      "Add Coupon Code",
                      style: TextStyle(
                          color: Color(0xff4c53a5),
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                  )
                ]),
              )
            ]),
          )
        ],
      ),
      bottomNavigationBar: const CartBottomNavBar(),
    );
  }
}
