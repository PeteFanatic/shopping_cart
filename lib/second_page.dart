import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:shopping_cart/home_page.dart';

import 'data_class.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFfefcff),
      body: SizedBox(
          width: double.maxFinite,
          height: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Icon(
                          Icons.shopping_cart_outlined,
                          color: Colors.black,
                        ),
                        Text(
                          'Shopping Cart',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 40),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Container(
                      width: double.infinity,
                      height: 5,
                      color: Colors.grey,
                    ),
                    const SizedBox(
                      height: 180,
                    ),
                  ],
                ),
              ),
              Flexible(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Text(
                      "Total",
                      style:
                          TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 100,
              ),
              Container(
                width: double.maxFinite,
                margin: const EdgeInsets.only(left: 40, right: 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const SizedBox(
                      width: 20,
                    ),
                    Flexible(
                      child: Container(
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        height: 60,
                        width: 180,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: GestureDetector(
                          onTap: () {
                            Get.to(() => const HomePage(),
                                transition: Transition.downToUp,
                                duration: const Duration(seconds: 1));
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Icon(Icons.skip_previous,
                                  color: Color(0xFFfefeff)),
                              Text(
                                "Prev Page",
                                style: TextStyle(
                                    fontSize: 20, color: Color(0xFFfefeff)),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          )),
    );
  }
}
