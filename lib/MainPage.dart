import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var lebar = MediaQuery.of(context).size.width;
    var tinggi = MediaQuery.of(context).size.height;
    return Container(
      margin: EdgeInsets.only(top: 8),
      child: ListView(
        physics: ClampingScrollPhysics(),
        children: [
          Container(
              margin: EdgeInsets.only(left: 8, right: 8, top: 3, bottom: 3),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset("assets/images/tiga.png"),
                  Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/images/cart.png"))),
                  )
                ],
              )),
          SizedBox(
            height: 3,
            width: lebar,
          ),
          SizedBox(
            height: 1,
            width: lebar,
            child: DecoratedBox(
                decoration: BoxDecoration(color: Color(0xff606161))),
          ),
          // searchbar
          Padding(
            padding:
                const EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 8),
            child: Column(
              children: [
                Row(
                  children: [
                    Flexible(
                      flex: 1,
                      child: TextField(
                        cursorColor: Color(0xffee2157),
                        decoration: InputDecoration(
                            fillColor: Color(0xfff7cbd1),
                            filled: true,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide.none,
                            ),
                            hintText: "Cari ..",
                            hintStyle: TextStyle(color: Colors.white),
                            prefixIcon: Container(
                              child: Image.asset(
                                "assets/images/cari.png",
                              ),
                            )),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16, top: 8, bottom: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "CATEGORIES",
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w900,
                      color: Color(0xffee2157)),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 8, right: 8),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 8),
                          child: Image.asset(
                            "assets/images/dress.png",
                            height: 80,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 8),
                          child: Image.asset(
                            "assets/images/pants.png",
                            height: 80,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 8),
                          child: Image.asset(
                            "assets/images/tshirt.png",
                            height: 80,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 8),
                          child: Image.asset(
                            "assets/images/shirt.png",
                            height: 80,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 8),
                          child: Image.asset(
                            "assets/images/hoodie.png",
                            height: 80,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 8),
                          child: Image.asset(
                            "assets/images/jacket.png",
                            height: 80,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 16, top: 8, bottom: 8),
                  child: Image.asset("assets/images/awal.png"),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16, bottom: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "NEW ARRIVAL",
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w900,
                      color: Color(0xffee2157)),
                ),
              ],
            ),
          ),
          Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 16, right: 8),
                    child: Image.asset(
                      "assets/images/e1.png",
                      height: tinggi / 3.5,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 16),
                    child: Image.asset(
                      "assets/images/e2.png",
                      height: tinggi / 3.5,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 16, right: 8, top: 8),
                    child: Image.asset(
                      "assets/images/e4.png",
                      height: tinggi / 3.5,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 16, top: 8),
                    child: Image.asset(
                      "assets/images/e3.png",
                      height: tinggi / 3.5,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      width: lebar / 4,
                      height: tinggi / 25,
                      decoration: const BoxDecoration(
                          color: Color(0xfff7cbd1),
                          borderRadius: BorderRadiusDirectional.only(
                            topStart: Radius.circular(5.0),
                            topEnd: Radius.circular(5.0),
                            bottomStart: Radius.circular(5.0),
                            bottomEnd: Radius.circular(5.0),
                          )),
                      child: Text(
                        "View More",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),

          Padding(
            padding: const EdgeInsets.only(top: 8),
            child: Row(
              children: [
                Container(
                  width: lebar,
                  height: tinggi / 10,
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                    color: Color(0xfff7cbd1),
                  ),
                  child: const Text(
                    "MITHA AMALIA 2009106028",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                      color: Color(0xffee2157),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
