import 'package:flutter/material.dart';
import 'package:food_recipe_app/utility/colors.dart';
import 'package:food_recipe_app/utility/image_items.dart';
import 'package:food_recipe_app/views/home.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({super.key});
  final String baslikBir = "Hızlı ve\nKolayca Harika Lezzetler";
  final String baslikIki = "Binlerce birbirinden farklı ve mükemmel yemek tarifleri!";
  final String baslikUc = "Hemen Başlayalım";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ProjectColors.black,
      body: Stack(
        children: [
          Image(
            image: AssetImage(JpgImageItems.background.jpgPath),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.8,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [ProjectColors.black, ProjectColors.transparentColor],
                stops: const [
                  0.2,
                  1,
                ],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(
              16,
              MediaQuery.of(context).padding.top + 16,
              16,
              MediaQuery.of(context).padding.bottom + 16,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Spacer(),
                Text(
                  baslikBir,
                  style: Theme.of(context)
                      .textTheme
                      .headlineMedium
                      ?.copyWith(color: ProjectColors.white),
                ),
                const SizedBox(height: 8),
                Text(
                  baslikIki,
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium
                      ?.copyWith(color: ProjectColors.white),
                ),
                const SizedBox(height: 22),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomeView()));
                  },
                  child: Container(
                    height: 65,
                    decoration: BoxDecoration(
                      color: ProjectColors.primaryColor,
                      borderRadius: BorderRadius.circular(32),
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      baslikUc,
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium
                          ?.copyWith(color: ProjectColors.white),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
