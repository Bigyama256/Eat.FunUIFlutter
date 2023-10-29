import 'package:flutter/material.dart';

class Profilepage extends StatelessWidget {
  Profilepage({super.key});
  final List<Map> categories = [
    {'image': "assets/b.png", 'title': "Burger"},
    {'image': "assets/p.png", 'title': "Pizza"},
    {'image': "assets/dr.png", 'title': "Drinks"},
    {'image': "assets/s.png", 'title': "Desserts"},
  ];
  final List<Map> burgers = [
    {'image': "assets/b1.png", 'title': "Chicken Burger", 'price': 150},
    {'image': "assets/b2.png", 'title': "Double Cheesy Burger", 'price': 220},
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Image.asset("assets/e2.png"),
            Image.asset("assets/e1.png"),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: [
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.menu, size: 30),
                      Image.asset("assets/profile.png"),
                    ],
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            "Choose the \nFOOd You LOVE",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          SizedBox(
                            height: 40,
                            child: TextField(
                              decoration: InputDecoration(
                                  fillColor: Color(0xffF8E0A0),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    borderSide:
                                        BorderSide(color: Colors.white, width: 2),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    borderSide:
                                        BorderSide(color: Colors.white, width: 2),
                                  ),
                                  filled: true,
                                  hintText: "Search for a food item",
                                  contentPadding: EdgeInsets.only(left: 10),
                                  hintStyle: TextStyle(
                                    color: Colors.white,
                                  )),
                            ),
                          ),
                          SizedBox(
                            height: 125,
                          ),
                          Text(
                            "Categories",
                            style: TextStyle(
                              color: Color.fromRGBO(0, 0, 0, 1),
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          SizedBox(
                            height: 100,
                            child: ListView.separated(
                                separatorBuilder: (context, index) => SizedBox(
                                      width: 10,
                                    ),
                                scrollDirection: Axis.horizontal,
                                itemCount: categories.length,
                                itemBuilder: (context, index) {
                                  return Column(
                                    children: [
                                      Container(
                                        alignment: Alignment.center,
                                        height: 70,
                                        width: 110,
                                        decoration: BoxDecoration(
                                            color: Color(0xffE5E5E5),
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            boxShadow: [
                                              BoxShadow(
                                                offset: Offset(2, 4),
                                                blurRadius: 4,
                                                color: Colors.grey,
                                              )
                                            ]),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Image.asset(
                                              categories[index]["image"],
                                              height: 25,
                                              width: 30,
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        categories[index]["title"],
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  );
                                }),
                          ),
                          Text(
                            "Burgers",
                            style: TextStyle(
                              color: Color.fromRGBO(0, 0, 0, 1),
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          SizedBox(
                            height: 240,
                            child: ListView.separated(
                                separatorBuilder: (context, index) => SizedBox(
                                      width: 10,
                                    ),
                                scrollDirection: Axis.horizontal,
                                itemCount: burgers.length,
                                itemBuilder: (context, index) {
                                  return Column(
                                    children: [
                                      Container(
                                        padding: EdgeInsets.all(10),
                                        alignment: Alignment.center,
                                        height: 230,
                                        width: 182,
                                        decoration: BoxDecoration(
                                            color: Color(0xffE5E5E5),
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            boxShadow: [
                                              BoxShadow(
                                                offset: Offset(2, 4),
                                                blurRadius: 4,
                                                color: Colors.grey,
                                              )
                                            ]),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Image.asset(
                                              burgers[index]["image"],
                                              height: 116,
                                              width: 145,
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Text(
                                              burgers[index]["title"],
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            // SizedBox(
                                            //   height: 10,
                                            // ),
                                            Row(
                                              children: [
                                                Icon(
                                                  Icons.star_outline,
                                                  size: 18,
                                                ),
                                                Icon(
                                                  Icons.star_outline,
                                                  size: 18,
                                                ),
                                                Icon(
                                                  Icons.star_outline,
                                                  size: 18,
                                                ),
                                                Icon(
                                                  Icons.star_outline,
                                                  size: 18,
                                                ),
                                                Icon(
                                                  Icons.star_outline,
                                                  size: 18,
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Text(
                                              "Rs: " +
                                                  burgers[index]["price"]
                                                      .toString(),
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 24,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  );
                                }),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
