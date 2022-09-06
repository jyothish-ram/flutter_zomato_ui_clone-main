class FoodItems {
  String name, imageUrl;

  FoodItems({this.name, this.imageUrl});
}

class Restaurants {
  String imageUrl, title, locations, rating, price;

  Restaurants(
      {this.imageUrl, this.locations, this.price, this.rating, this.title});
}

List<FoodItems> foodItemList = [
  FoodItems(
      name: "Healthy",
      imageUrl:
          "https://previews.123rf.com/images/firstblood/firstblood1506/firstblood150600075/40973395-transparent-glass-bowl-with-greek-salad-isolated-on-white-background-top-view.jpg"),
  FoodItems(
      name: "Pizza",
      imageUrl:
          "https://www.pikpng.com/pngl/m/327-3271979_half-a-pizza-transparent-background-clipart.png"),
  FoodItems(
      name: "Burger",
      imageUrl:
          "https://www.pikpng.com/pngl/m/41-418681_free-png-download-burger-png-pics-png-images.png"),
  FoodItems(
      name: "Thali",
      imageUrl:
          "https://png.pngitem.com/pimgs/s/145-1453293_chapati-with-curry-png-transparent-png.png"),
  FoodItems(
      name: "Rolls",
      imageUrl:
          "https://icon2.cleanpng.com/20180715/yqy/kisspng-egg-roll-spring-roll-popiah-dim-sum-ch-gi-samosa-5b4bc356ab3951.3897352315316918627013.jpg"),
  FoodItems(
      name: "Biryani",
      imageUrl:
          "https://icon2.cleanpng.com/20180330/axe/kisspng-hyderabadi-biryani-indian-cuisine-dish-chicken-mea-biryani-5abedc42d00da9.6620510115224576668522.jpg"),
  FoodItems(
      name: "Paneer",
      imageUrl:
          "https://icon2.cleanpng.com/20180331/wxq/kisspng-mattar-paneer-indian-cuisine-shahi-paneer-palak-pa-indian-food-5abf1505113f64.7556672415224721970707.jpg"),
  FoodItems(
      name: "Chicken",
      imageUrl:
          "https://toppng.com/uploads/preview/fried-chicken-115400746154bqe3zcl5t.png"),
];

List<Restaurants> restaurantList = [
  Restaurants(
      title: "Om Sweet & Snacks",
      locations: "North Indian,  South Indian, Chinese",
      price: "100",
      rating: "4.2",
      imageUrl:
          "https://2rdnmg1qbg403gumla1v9i2h-wpengine.netdna-ssl.com/wp-content/uploads/sites/3/2016/05/worstSnacks-527905022-770x533-1-745x490.jpg"),
  Restaurants(
    title: "The Masala Story",
    locations: "North Indian, Mughlai, Kebab",
    price: "300",
    rating: "4.1",
    imageUrl:
        "https://c.ndtvimg.com/2020-01/a39okhfk_620_625x300_21_January_20.jpg",
  ),
  Restaurants(
    title: "Domino's Pizza",
    locations: "Pizza, Fast Food",
    price: "150",
    rating: "4.1",
    imageUrl:
        "https://www.indianhealthyrecipes.com/wp-content/uploads/2015/10/pizza-recipe-1-500x500.jpg",
  ),
  Restaurants(
    title: "MCDonald's",
    locations: "Burger, Fast Food, Beverages",
    price: "150",
    rating: "4.1",
    imageUrl:
        "https://www.newfoodmagazine.com/wp-content/uploads/mcdonalds.jpg",
  ),
  Restaurants(
    title: "Gohana Faous Jalebi",
    locations: "Street Food, Mithai",
    price: "100",
    rating: "4.2",
    imageUrl: "https://pbs.twimg.com/media/EhHIY9CWsAA9rN9.jpg",
  ),
  Restaurants(
    title: "Burger King",
    locations: "Burger, American, Desserts",
    price: "150",
    rating: "4.2",
    imageUrl:
        "https://media1.s-nbcnews.com/j/newscms/2019_21/2870431/190524-classic-american-cheeseburger-ew-207p_d9270c5c545b30ea094084c7f2342eb4.fit-2000w.jpg",
  ),
  Restaurants(
    title: "Haldiram's",
    locations: "North Indian, Mithai, South Indian",
    price: "100",
    rating: "4.0",
    imageUrl:
        "https://media.self.com/photos/5ebd7a636ed447b59b846244/4:3/w_2560%2Cc_limit/snack-plate.jpg",
  ),
];
