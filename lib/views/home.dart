import 'package:flutter/material.dart';
import 'package:food_recipe_app/model/food_model.dart';
import 'package:food_recipe_app/utility/colors.dart';
import 'package:food_recipe_app/widgets/food_item.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  
  final String helloText = "Hoşgeldiniz";
  final String questionText = "Bugün hangi yemeği yapmak istiyorsunuz?"; 
  final String searchText = "Tarif ara...";
  final String noticeText = "Yakında çok daha fazla kategori getiriyoruz.";
  final String clickText1 = "Tarifleri Gör";
  final String clickText2 = "Hepsini Gör";
  final String popularText = "En Popüler Tarifler";
  final String newestText = "En Yeni Tarifler";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ProjectColors.backgroundBlack,
      body: SingleChildScrollView(
        padding: EdgeInsets.only(
          top: MediaQuery.of(context).padding.top + 24,
          bottom: MediaQuery.of(context).padding.bottom + 24,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Text(
                helloText,
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      color: ProjectColors.primaryColor,
                    ),
              ),
            ),
            const SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Text(
                 questionText,
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: ProjectColors.white),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(16),
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: ProjectColors.backgroundGrey,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Row(
                children: [
                   Icon(Icons.search,color: ProjectColors.black,),
                  const SizedBox(
                    width: 8,
                  ),
                  Expanded(
                    child: Text(
                      searchText,
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: ProjectColors.black),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(16, 0, 16, 16),
              padding: const EdgeInsets.fromLTRB(16, 16, 16, 8),
              decoration: BoxDecoration(
                color: ProjectColors.primaryColor.withOpacity(0.3),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Icon(Icons.info_outline,size: 30),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          noticeText,
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            clickText1,
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(
                                    color: ProjectColors.white,
                                    decoration: TextDecoration.underline),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    popularText,
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(color: ProjectColors.white),
                  ),
                  TextButton(
                    onPressed: () {},
                    child:  Text(clickText2,style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: ProjectColors.primaryColor),),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            SizedBox(
              height: 280,
              child: ListView.separated(
                itemCount: trendFoods.length,
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 24),
                separatorBuilder: (_, __) {
                  return const SizedBox(
                    width: 16,
                  );
                },
                itemBuilder: (context, index) {
                  final food = trendFoods[index];
                  return FoodItem(food: food);
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    newestText,
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(color: ProjectColors.white),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(clickText2,style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: ProjectColors.primaryColor),),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 8),
            SizedBox(
              height: 280,
              child: ListView.separated(
                itemCount: newestFoods.length,
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 24),
                separatorBuilder: (_, __) {
                  return const SizedBox(
                    width: 16,
                  );
                },
                itemBuilder: (context, index) {
                  final food = newestFoods[index];
                  return FoodItem(food: food);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
//aaaaa