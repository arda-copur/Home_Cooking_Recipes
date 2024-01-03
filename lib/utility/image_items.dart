enum JpgImageItems {kofte,makarna,kroket,sarma,sote,pilav,fasulye,background}

extension JpgImageItemsExtension on JpgImageItems {
  String _jpgPath(){
    switch (this) {
  
      case JpgImageItems.kofte:
      return "köfte";

      case JpgImageItems.makarna:
      return "kremalı_makarna";
      
      case JpgImageItems.kroket:
      return "kroket_patates";
     
      case JpgImageItems.sarma:
      return  "sarma";
     
      case JpgImageItems.sote:
      return "tavuk_sote";
        
      case JpgImageItems.pilav:
       return "tavuklu_pilav";
        
      case JpgImageItems.fasulye:
       return "kuru_fasulye";

      case JpgImageItems.background:
        return "background";
        
    }
        
    }

    String get jpgPath => "images/food_${_jpgPath()}.jpg";
}