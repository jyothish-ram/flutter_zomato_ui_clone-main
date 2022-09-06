import 'package:flutter/material.dart';
import 'package:zomato_clone/Screens/SubScreen/MenuScreen.dart';
import 'package:zomato_clone/const.dart';

class OrderScreen extends StatelessWidget {
  final List<String> options = [
    "Pro",
    "Rating: 4.0+",
    "Max Saftey",
    "Fastest Delivery",
    "Offers",
    "TakeAway",
    "Popular"
  ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              header(size),
              searchBar(size),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: optionsAvalible(size),
              ),
              offerCard(size),
              SizedBox(
                height: size.height / 35,
              ),
              Container(
                width: size.width / 1.1,
                child: Text(
                  "Eat what make you happy",
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.black,
                    //fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              SizedBox(
                height: size.height / 35,
              ),
              itemsList(size),
              Container(
                width: size.width / 1.1,
                child: Text(
                  "877 restaurants around you",
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.black,
                    //fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              restaurantsAvalible(size),
            ],
          ),
        ),
      ),
    );
  }

  Widget restaurantsAvalible(Size size) {
    return Container(
      height: size.height,
      width: size.width,
      child: ListView.builder(
          itemCount: restaurantList.length,
          itemBuilder: (context, index) {
            return itemBuilder(size, index, context);
          }),
    );
  }

  Widget itemBuilder(Size size, int index, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 18.0),
      child: GestureDetector(
        onTap: () => Navigator.of(context)
            .push(MaterialPageRoute(builder: (_) => MenuScreen())),
        child: Material(
          elevation: 3,
          borderRadius: BorderRadius.circular(18),
          child: Container(
            height: size.height / 2.5,
            width: size.width / 1.1,
            child: Column(
              children: [
                Container(
                  height: size.height / 4,
                  width: size.width / 1.1,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(18),
                      topRight: Radius.circular(18),
                    ),
                    image: DecorationImage(
                        image: NetworkImage(restaurantList[index].imageUrl),
                        fit: BoxFit.cover),
                  ),
                ),
                Container(
                  height: size.height / 12,
                  width: size.width / 1.2,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        restaurantList[index].title,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Container(
                        height: size.height / 25,
                        width: size.width / 7,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.green,
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          restaurantList[index].rating,
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: size.width / 1.2,
                  child: Text(
                    "${restaurantList[index].locations}   \t\t\t\t\t\t\t\t\t\t\t\t\t\t  ${restaurantList[index].price} for one",
                    style: TextStyle(
                      fontSize: 12.9,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget itemsList(Size size) {
    return Container(
      height: size.height / 3,
      width: size.width,
      child: GridView.builder(
          itemCount: foodItemList.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4, mainAxisSpacing: 20),
          itemBuilder: (context, index) {
            return Container(
              height: size.height / 3,
              width: size.width / 5,
              child: Column(
                children: [
                  Container(
                    height: size.height / 10,
                    width: size.height / 10,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                          foodItemList[index].imageUrl,
                        ),
                      ),
                    ),
                  ),
                  Text(
                    foodItemList[index].name,
                    style: TextStyle(fontWeight: FontWeight.w500),
                  )
                ],
              ),
            );
          }),
    );
  }

  Widget offerCard(Size size) {
    return Container(
      height: size.height / 2.7,
      width: size.width / 1.1,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Color.fromRGBO(226, 56, 70, 1),
      ),
      child: Column(
        children: [
          Container(
            height: size.height / 6,
            width: size.height / 6,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: NetworkImage(
                    "https://www.pikpng.com/pngl/m/327-3271979_half-a-pizza-transparent-background-clipart.png"),
              ),
            ),
          ),
          Container(
            width: size.width / 1.25,
            child: Text(
              "Welcome",
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: size.width / 1.25,
              child: Text(
                "GET 50% OFF \nON FIRST ORDER",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
            ),
          ),
          Container(
            width: size.width / 1.25,
            child: Text(
              "Order Now >",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget optionsAvalible(Size size) {
    return Container(
      height: size.height / 15,
      width: size.width,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: options.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: size.height / 16,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      width: 1,
                      color: Colors.grey,
                    )),
                padding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                child: Text(options[index]),
              ),
            );
          }),
    );
  }

  Widget searchBar(Size size) {
    return Container(
      height: size.height / 15,
      width: size.width / 1.1,
      decoration: BoxDecoration(
        border: Border.all(width: 2, color: Colors.grey),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        children: [
          SizedBox(
            width: size.width / 40,
          ),
          Icon(Icons.search, color: Colors.red),
          SizedBox(
            width: size.width / 20,
          ),
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Restaurant name, cuisine, or a dish..."),
            ),
          ),
        ],
      ),
    );
  }

  Widget header(Size size) {
    return Container(
      height: size.height / 10,
      width: size.width,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Icon(
              Icons.add_location,
              color: Colors.black,
            ),
          ),
          Text(
            "Add Your Location Here",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            width: size.width / 5,
          ),
          IconButton(icon: Icon(Icons.menu), onPressed: () {}),
        ],
      ),
    );
  }
}
