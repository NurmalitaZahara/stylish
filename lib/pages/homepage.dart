import 'dart:ffi';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:stylish/components/categoryButton.dart';
import 'package:stylish/components/productCard.dart';
import 'package:stylish/components/squar_tile.dart';
import 'package:stylish/main.dart';
import 'package:stylish/pages/signup.dart';
import '../components/search_button.dart';
import 'package:stylish/menu.dart';

class homepage extends StatelessWidget {
  homepage({super.key});

  final controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF4F5F7),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(left: 19, right: 19, top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 30,
                      color: Colors.transparent,
                      child: Image.asset("assets/line.png"),
                    ),
                    Container(
                      width: 130,
                      color: Colors.transparent,
                      child: Image.asset(
                        "assets/texas.png",
                        color: Colors.black,
                      ),
                    ),
                    Container(
                      width: 30,
                      color: Colors.transparent,
                      child: Image.asset("assets/lonceng.png"),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.only(left: 19),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          "Explore",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 32),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Text(
                          "best Outfits for you",
                          style: TextStyle(
                            color: Color.fromARGB(255, 161, 161, 161),
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 50,
              ),
              MySearch(
                controller: controller,
                hintText: "Search items",
                obscuretext: true,
                Widget1: Icon(
                  Icons.search,
                ),
              ),
              SizedBox(height: 20),
              Container(
                margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      categorybutton(
                        image: "assets/dress.png",
                        name: "Dress",
                        ontap: () {},
                      ),
                      SizedBox(width: 21),
                      categorybutton(
                        image: "assets/shirt.png",
                        name: "Shirt",
                        ontap: () {},
                      ),
                      SizedBox(width: 21),
                      categorybutton(
                        image: "assets/pants.png",
                        name: "Pants",
                        ontap: () {},
                      ),
                      SizedBox(width: 21),
                      categorybutton(
                        image: "assets/tshirt.png",
                        name: "Tshit",
                        ontap: () {},
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 40),
              Container(
                margin: EdgeInsets.only(left: 25, right: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "New Arivall",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "See All",
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 17),
              SingleChildScrollView(
                padding: EdgeInsets.only(left: 25, right: 25),
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    productCard(
                      harga: "Rp.179.000,-",
                      image: "assets/baju1.png",
                      name: "Casual Henley Shirts",
                      ontap: () {},
                    ),
                    SizedBox(width: 7),
                    productCard(
                      harga: "Rp.189.000,-",
                      image: "assets/baju2.png",
                      name: "Long Sleeve Shirts",
                      ontap: () {},
                    ),
                    SizedBox(width: 7),
                    productCard(
                      harga: "Rp.149.000,-",
                      image: "assets/baju3.png",
                      name: "Curved Hem Shirt",
                      ontap: () {},
                    ),
                    SizedBox(width: 7),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
