
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:login_app_flutter/src/common_widgets/category_card/category_card.dart';
import 'package:login_app_flutter/src/constants/colors.dart';
import 'package:login_app_flutter/src/constants/image_strings.dart';

import '../../../common_widgets/food_card/food_card.dart';
import '../../../common_widgets/sidebar/profile_sidebar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Food Desires",
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.search_outlined))
        ],
        backgroundColor: primaryColor,
      ),
      drawer: const ProfileSidebar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CarouselSlider(
              items: [
                Image.asset(foodBanner1),
                Image.asset(foodBanner2),
                Image.asset(foodBanner3),
              ],
              options: CarouselOptions(
                height: 400.0,
                autoPlay: true,
                autoPlayInterval: const Duration(seconds: 3),
                enlargeCenterPage: true,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            //categories section
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                "Categories",
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 100,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  categoryCard('Cafe', Icons.local_cafe_rounded),
                  categoryCard('Patisserie', Icons.cake_rounded),
                  categoryCard('Restaurants', Icons.restaurant_rounded),
                  categoryCard('Fast Food', Icons.fastfood),
                ],
              ),
            ),
            //now available section
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10),
              child: Text("Now Available",
                  style: Theme.of(context).textTheme.headlineMedium),
            ),
            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: foodItems.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, childAspectRatio: 0.7),
              itemBuilder: (context,index) {
                final foodItem = foodItems[index];

                return FoodCard(
                 foodItem["name"] ?? "",
                   foodItem["type"] ?? ""
                );

              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.orange,
          unselectedItemColor: Colors.grey,
          items: const [
             BottomNavigationBarItem(
                icon: Icon(Icons.home),
              label: 'Home',
             ),
             BottomNavigationBarItem(
                icon: Icon(Icons.dinner_dining),
                label: 'Dining'),
             BottomNavigationBarItem(
                icon: Icon(Icons.fastfood),
                label: 'Fast Food'),
             BottomNavigationBarItem(
                icon: Icon(Icons.bookmark_border),
                label: 'Order'),


          ]

      ),
    );
  }
}

// Movie Card Widget


