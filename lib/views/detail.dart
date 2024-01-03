// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';

import 'package:food_recipe_app/model/food_model.dart';
import 'package:food_recipe_app/utility/colors.dart';

class DetailView extends StatelessWidget {
  final FoodModel food;
  const DetailView({Key? key, required this.food}) : super(key: key);
  final String textPoint = "Puan";
  final String myExpandText = "devamını gör";
  final String myCollapseText = "daha azını gör";
  final String materialsText = "Malzemeler :";


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ProjectColors.backgroundBlack,
      appBar: AppBar(
          backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
          elevation: 0),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.symmetric(horizontal: 24),
        children: [
          Center(
            child: Container(
              height: 250,
              width: 250,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: AssetImage(food.image), fit: BoxFit.cover),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [rateColumn(context), timeColumn(context)],
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            food.name,
            style: Theme.of(context).textTheme.displayLarge?.copyWith(
                fontSize: 55,
                fontWeight: FontWeight.w900,
                color: ProjectColors.white,
                height: 1.3),
          ),
          const SizedBox(
            height: 20,
          ),
          ExpandableText(
            food.description,
            expandText: myExpandText,
            collapseText: myCollapseText,
            maxLines: 4,
            style: Theme.of(context)
                .textTheme
                .labelMedium
                ?.copyWith(color: Colors.grey, fontSize: 14),
            linkColor: DetailColors.kYellow,
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              PieChartCircular(
                which: "CAL",
                gr: food.cal,
              ),
              PieChartCircular(
                which: "FATS",
                gr: food.fats,
              ),
              PieChartCircular(
                which: "CARBS",
                gr: food.carbs,
              ),
              PieChartCircular(
                which: "PROT",
                gr: food.prot,
              )
            ],
          ),
          const Padding(padding: EdgeInsets.all(12)),
          MaterialsRow(materialsText: materialsText, food: food),
        ],
      ),
    );
  }

  Column rateColumn(BuildContext context) {
    return Column(
      children: [
        Text(
          "⭐ ${food.rate.toString()}",
          style: Theme.of(context)
              .textTheme
              .bodyLarge
              ?.copyWith(color: ProjectColors.white),
        ),
        Text(
          textPoint,
          style: Theme.of(context)
              .textTheme
              .bodyLarge
              ?.copyWith(color: ProjectColors.white),
        )
      ],
    );
  }

  Column timeColumn(BuildContext context) {
    return Column(
      children: [
        Text(
          " ${food.duration.toString()}",
          style: Theme.of(context)
              .textTheme
              .bodyLarge
              ?.copyWith(color: ProjectColors.white),
        ),
        Text(
          "🕒",
          style: Theme.of(context).textTheme.bodyLarge,
        )
      ],
    );
  }
}

class MaterialsRow extends StatelessWidget {
  const MaterialsRow({
    super.key,
    required this.materialsText,
    required this.food,
  });

  final String materialsText;
  final FoodModel food;

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Text(materialsText,style: Theme.of(context).textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.w900),),
      const SizedBox(width: 5),
      Text(food.materials,style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: ProjectColors.backgroundGrey),)
    ],
    );
  }
}

class PieChartCircular extends StatelessWidget {
  String which;
  int gr;
  PieChartCircular({
    Key? key,
    required this.which,
    required this.gr,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            Container(
              height: 60,
              width: 60,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: ProjectColors.black,
                  boxShadow: const [
                    BoxShadow(
                        color: Colors.grey, spreadRadius: 1, blurRadius: 1),
                  ]),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    which,
                    style: const TextStyle(color: Colors.grey),
                  ),
                  Text(
                    gr.toString(),
                    style: TextStyle(color: ProjectColors.white),
                  )
                ],
              ),
            ),
            RepaintBoundary(
              child: PieChart(
                dataMap: dataMap,
                animationDuration: const Duration(milliseconds: 800),
                chartRadius: 60,
                initialAngleInDegree: 270,
                baseChartColor: ProjectColors.transparentColor,
                totalValue: 100,
                chartType: ChartType.ring,
                ringStrokeWidth: 2,
                gradientList: [pieChartColorList],
                legendOptions: const LegendOptions(showLegends: false),
                chartValuesOptions: const ChartValuesOptions(
                  showChartValues: false,
                  showChartValuesInPercentage: false,
                  showChartValuesOutside: false,
                ),
              ),
            )
          ],
        )
      ],
    );
  }
}

final dataMap = <String, double>{"Completed": 36};
final dataMap2 = <String, double>{"Completed": 75};
final dataMap3 = <String, double>{"Completed": 28};
final dataMap4 = <String, double>{"Completed": 42};

final pieChartColorList = <Color>[
  DetailColors.kOrange,
  DetailColors.kYellow,
];

class DetailColors {
  static const Color kYellow = Color(0xffFED216);
  static const Color kOrange = Color(0xffFE6424);
}
