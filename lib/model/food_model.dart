import 'package:food_recipe_app/utility/image_items.dart';

class FoodModel {
  final String name;
  final String image;
  final String category;
  final String duration;
  final String serving;
  final double rate;
  final int cal;
  final int fats;
  final int carbs;
  final int prot;
  final String description;
  FoodModel(
      {required this.name,
      required this.image,
      required this.category,
      required this.duration,
      required this.serving,
      required this.rate,
      required this.cal,
      required this.fats,
      required this.carbs,
      required this.prot,
      required this.description
      });
}

final trendFoods = [
  FoodModel(
      name: "Kremalı Makarna",
      image: JpgImageItems.makarna.jpgPath,
      category: "Makarna",
      duration: "25 Dakika",
      serving: "2-3 Kişilik",
      rate: 4.2,
      cal: 542,
      fats: 88,
      carbs: 76, 
      prot: 28, 
      description: 
""" 
Makarnayı bol tuzlu suda haşlayın. Biberleri jülyen doğrayın, yağı tavaya alın ve biberleri soteleyin.Sarımsakları ekleyerek kavurun.Biberler kavrulunca
krema,süt ve hardal ekleyerek kısık ateşte pişirmeye devam edin.Krema kaynamaya başlayınca baharatları da ekleyerek 1-2 dakika daha pişirin.Sosu ocaktan
alın ve dereout, maydonoz ekleyerek karıştırın.Haşlanıp süzülen makarnanızı da üzerine ekleyip tekrar karıştırın.Servise hazırdır.
"""),
  FoodModel(
      name: "Tavuklu Pilav",
      image: JpgImageItems.pilav.jpgPath,
      category: "Bakliyat",
      duration: "40 Dakika",
      serving: "2-3 Kişilik",
      rate: 4.3,
      cal: 450,
      fats: 38,
      carbs: 96, 
      prot: 57, 
      description: 
"""
Tavukları tencereye koyup, üzerini bir parmak geçecek şekilde su ekleyip kaynamaya bırakın. Haşlanan tavukların işi bitince soğuması için kenara alın.
Biraz soğuduktan sonra tiftikleyerek ayırın.Bir yandan pirinci ılık suya koyup nişastasını çıkarın.Pilav tenceresine yağ ekleyip eridiğinde
şehriyeleri kavurun.Zamanı gelince pirinci ekleyip kavurmaya devam edin.Ardından tavuğu ekleyin.Kısık ateşte pişirip, baharatlayıp servis edebilirsiniz.
"""),
  FoodModel(
      name: "Kuru Fasülye",
      image: JpgImageItems.fasulye.jpgPath,
      category: "Bakliyat",
      duration: "45 Dakika",
      serving: "3-4 Kişilik",
      rate: 3.8,
      cal: 285,
      fats: 44,
      carbs: 82, 
      prot: 35, 
      description: 
"""
 4 yemek kaşığı sıvı yağ ve 2 yemek kaşığı tereyağını tencereye koyup kızdırın. Doğranmış kuru soğanı ekleyip pembeleşinceye dek kavurun.Soğanlar kavrulduktan
 sonra salça ekleyip kokusu çıkana kadar tekrar kavurun.Son olarak bir gece önceden suda beklettiğiniz fasülyeleri tencereye ekleyin.1-2 dakika karıştırıp
 baharatlarını ve tuzunu ekleyerek kapağını kapatın.Kısık ateşte fasulyeleri pişirdikten sonra servise hazırdır.
"""),
];

final newestFoods = [
  FoodModel(
      name: "Patates Kroket",
      image: JpgImageItems.kroket.jpgPath,
      category: "Atıştırmalık",
      duration: "30 Dakika",
      serving: "3-4 Kişilik",
      rate: 4.0,
      cal: 568,
      fats: 95,
      carbs: 44, 
      prot: 28, 
      description: 
"""
Kızdırılmış yağda her iki yüzeyini de çevirerek kızartın.Harcın çok akışkan olmaması için patatesleri kabuk ile haşlayabilirsiniz.Kroketleri donduruncuda
bekletmeden yapmak isterseniz 2 yemek kaşığı mısır nişastası ekleyebilirsiniz.Sıcak servis edilmelidir ve fazla yağı süzdürülmelidir.
"""),
  FoodModel(
      name: "Izgara Köfte",
      image: JpgImageItems.kofte.jpgPath,
      category: "Kırmızı Et",
      duration: "25 Dakika",
      serving: "2-3 Kişilik",
      rate: 4.5,
      cal: 365,
      fats: 60,
      carbs: 52, 
      prot: 58, 
      description: 
"""
Soğan ve sarımsakları rendeleyin. Maydanozu ince olacak şekilde kıyın. Baharatları ekleyip iyice yoğurun. En az 5 dakika kadar yoğurulmalıdır.İçinde
ekmek,yumurta ve maydanoz mutlaka olmalıdır.Harcı hazırladıktan sonra şekil verin ve ardından 2 saat kadar buzdolabında dinlendirin.Sonrasında ızgarada
pişirerek afiyetle yiyebilirsiniz.
"""),
  FoodModel(
      name: "Tavuk Sote",
      image: JpgImageItems.sote.jpgPath,
      category: "Beyaz Et",
      duration: "40 Dakika",
      serving: "3-4 Kişilik",
      rate: 4.7,
      cal: 490,
      fats: 39,
      carbs: 44, 
      prot: 47, 
      description: 
"""
Tavuk etini kuşbaşı doğrayın.Soğanları yemeklik, biberleri julyen doğrayın.Domatesleri de küp küp doğrayın.Kısık ateşte tavukları arada karıştırarak
kavurun.Suyunu biraz çektikten sonra soğanları ve ince kesilmiş sarımsağı ekleyin.1-2 dakika kavurduktan sonra biberleri ilave edin.Biberler de
sotelenince domatesi,salçayı,baharatları ve tuzu ekleyip pişirin.Afiyet olsun.
"""),
];
