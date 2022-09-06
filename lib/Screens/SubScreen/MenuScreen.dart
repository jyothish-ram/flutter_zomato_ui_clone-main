import 'package:flutter/material.dart';

class MenuScreen extends StatefulWidget {
  @override
  _MenuScreenState createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  @override
  void initState() {
    super.initState();
    for (int i = 0; i <= 5; i++) {
      isEnabled.add(false);
    }
  }

  final List<OffersData> data = [
    OffersData(
      title: "PRO extra 15%...",
      subtitle: "only for members...",
      color: Colors.red[700],
    ),
    OffersData(
      title: "60% off up to ev...",
      subtitle: "use code WELCO....",
      color: Colors.blue[700],
    ),
    OffersData(
      title: "60% OFF up to ev...",
      subtitle: "user code WELCO...",
      color: Colors.blue[700],
    ),
  ];

  List<bool> isEnabled = [];

  void onPressed(TapDownDetails details, BuildContext context) async {
    Offset offset = details.globalPosition;

    await showMenu(
      context: context,
      position: RelativeRect.fromLTRB(offset.dx, offset.dy, 0, 0),
      items: [
        PopupMenuItem(child: Text("Pro Membership         1")),
        PopupMenuItem(child: Text("Todat's Exclusive Dish 1")),
        PopupMenuItem(child: Text("Recomended             23")),
        PopupMenuItem(child: Text("Zomato Special Combo   5")),
        PopupMenuItem(child: Text("Our Speciality         4")),
        PopupMenuItem(child: Text("Mini Meals             5")),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Container(
              height: size.height / 15,
              alignment: Alignment.center,
              child: Text(
                "more info",
                style: TextStyle(
                  color: Colors.redAccent,
                  fontSize: 18,
                ),
              ),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: size.height / 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: header(size),
            ),
            offers(size),
            menuHeader(size),
            menuBarDishes(size, 1, "Pro MemberShip ", 0),
            isEnabled[0] ? menuBarDishesItemBuilder(size, 6, 1) : Container(),
            menuBarDishes(size, 12, "Today's Exclusive Dish", 1),
            isEnabled[1] ? menuBarDishesItemBuilder(size, 6, 12) : Container(),
            menuBarDishes(size, 5, "Zomato Special Combo", 2),
            isEnabled[2] ? menuBarDishesItemBuilder(size, 6, 5) : Container(),
            menuBarDishes(size, 4, "Our Speciality", 3),
            isEnabled[3] ? menuBarDishesItemBuilder(size, 6, 4) : Container(),
            menuBarDishes(size, 5, "Mini Meals", 4),
            isEnabled[4] ? menuBarDishesItemBuilder(size, 6, 5) : Container(),
            menuBarDishes(size, 23, "Recomended", 5),
            isEnabled[5] ? menuBarDishesItemBuilder(size, 6, 23) : Container(),
          ],
        ),
      ),
      floatingActionButton: GestureDetector(
        onTapDown: (details) => onPressed(details, context),
        child: Container(
          height: size.height / 18,
          width: size.width / 4,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            color: Colors.black,
          ),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Icon(
                  Icons.menu,
                  color: Colors.white,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(1.0),
                child: Text(
                  "Menu",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget menuBarDishesItemBuilder(Size size, int height, int itemcount) {
    return Container(
      height: size.height / height,
      width: size.width,
      child: ListView.builder(
          itemCount: itemcount,
          itemBuilder: (context, index) {
            return Container(
              height: size.height / 6,
              width: size.width,
              decoration: BoxDecoration(
                border: Border.symmetric(
                  horizontal: BorderSide(
                    width: 0.5,
                    color: Colors.grey,
                  ),
                ),
              ),
              child: Row(
                children: [
                  Container(
                    height: size.height / 3,
                    width: size.width / 1.5,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: size.width / 1.8,
                            child: Text(
                              "Restaurent Name",
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: size.width / 1.8,
                          child: Text(
                            "Restaurent Meal Details",
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                        ),
                        Container(
                          width: size.width / 1.8,
                          child: Text(
                            "Price 170",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        Container(
                          width: size.width / 1.8,
                          child: Text(
                            "Rating: 4.5",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: size.height / height,
                    width: size.width / 3,
                    alignment: Alignment.center,
                    child: Container(
                      height: size.height / 19,
                      width: size.width / 4,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.red[100],
                        border: Border.all(
                          width: 1,
                          color: Colors.redAccent,
                        ),
                      ),
                      child: Text(
                        "Add",
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          }),
    );
  }

  Widget menuBarDishes(Size size, int items, String title, int index) {
    return GestureDetector(
      onTap: () {
        if (isEnabled[index]) {
          setState(() {
            isEnabled[index] = false;
          });
        } else {
          setState(() {
            isEnabled[index] = true;
          });
        }
      },
      child: Container(
        height: size.height / 10,
        width: size.width,
        decoration: BoxDecoration(
          border: Border.symmetric(
            horizontal: BorderSide(color: Colors.grey, width: 0.5),
          ),
        ),
        child: Row(
          children: [
            Container(
              height: size.height / 10,
              width: size.width / 1.2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: size.width / 1.3,
                    child: Text(
                      title,
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Container(
                      width: size.width / 1.3,
                      child: Text(
                        "$items items",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 16,
                        ),
                      ))
                ],
              ),
            ),
            Container(
              height: size.height / 10,
              width: size.width / 8,
              alignment: Alignment.centerRight,
              child: Icon(Icons.arrow_downward),
            )
          ],
        ),
      ),
    );
  }

  Widget menuHeader(Size size) {
    return Container(
      height: size.height / 10,
      width: size.width,
      decoration: BoxDecoration(
        color: Colors.grey[200],
        border: Border.all(
          width: 0.5,
          color: Colors.grey[800],
        ),
      ),
      child: Row(
        children: [
          SizedBox(
            width: size.width / 17,
          ),
          Text(
            "Menu",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(
            width: size.width / 7,
          ),
          menuItems(size, "Egg"),
          menuItems(size, "Veg"),
          menuItems(size, "Search"),
        ],
      ),
    );
  }

  Widget menuItems(Size size, String text) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: size.height / 20,
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(horizontal: 15),
        decoration: BoxDecoration(
          color: Colors.grey[100],
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            width: 1,
            color: Colors.grey,
          ),
        ),
        child: Text(
          text,
          style: TextStyle(fontSize: 16),
        ),
      ),
    );
  }

  Widget offers(Size size) {
    return Container(
      height: size.height / 10,
      width: size.width,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: data.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 10.0,
              horizontal: 3,
            ),
            child: Container(
              height: size.height / 15,
              width: size.width / 3,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: data[index].color,
              ),
              child: Text(
                "${data[index].title}\n ${data[index].subtitle}",
                style: TextStyle(color: Colors.white),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget header(Size size) {
    return Container(
      height: size.height / 7,
      width: size.width,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: size.width / 2,
                  alignment: Alignment.center,
                  child: Text(
                    "Gulshan Dhaba",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4.0),
                  child: Container(
                    width: size.width / 3,
                    alignment: Alignment.center,
                    child: Text(
                      "North India",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey[800],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: size.height / 70,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: size.width / 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Icon(Icons.timer),
                    ),
                    Text("37 Mins"),
                    SizedBox(
                      width: size.width / 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Icon(Icons.location_on),
                    ),
                    Text("Live Tracking")
                  ],
                ),
              ],
            ),
          ),
          Container(
            height: size.height / 3.5,
            width: size.width / 3,
            alignment: Alignment.topRight,
            child: Container(
              height: size.height / 15,
              width: size.width / 4,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                ),
                color: Colors.green[800],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "3.9",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    "Delivery",
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class OffersData {
  String title, subtitle;
  Color color;
  OffersData({this.color, this.subtitle, this.title});
}
