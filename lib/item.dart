import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Item{
  String title;
  Color color;
  String price;
  String image;
  String pricedes;
  String description;
  Item(this.title,this.color,this.price,this.image,this.pricedes,this.description);

}

List<Item> getListIyem(){
  return <Item>[
    Item('strawberry', Color(0xFFF4E389), '1.15', 'images/strawberry.png','per kg','A strawberry is a short plant in the wild strawberry genus of the rose family. The name is also used for its very common sweet edible "fruit" and for flavors that taste like it.',
    ),
    Item('pineapple',Color(0xFFDFDFF8),  '14.80','images/pineapple.png', 'per kg',
      'Pineapples are tropical fruits that are rich in vitamins, enzymes and antioxidants. They may help boost the immune system, build strong bones and aid indigestion.',

    ),
    Item('papaya',Color(0xFFEAB9E7),  '5.36',  'images/papaya.png', 'each',
      'Papayas grow in tropical climates and are also known as papaws or pawpaws. Their sweet taste, vibrant color, and the wide variety of health benefits they provide make them a popular fruit.',

    ),
    Item('mango',Color(0xFFB4E0AA),  '8.22',  'images/mango.png', 'per kg',
      "Mango's tropical taste has a universal appeal. The meat has the sweetness of a peach. This apricot colored fruit has just enough fiber to give it some chewiness.",
    ),
    Item('lychee',Color(0xFFF8DA8A),  '1.02', 'images/lychee.png', 'each',
      "Lychee is a tropical fruit that is unique in appearance and flavor. It's native to China but can grow in certain warm regions of the U.S like Florida and Hawaii.",

    ),
    Item('dragon_fruit', Color(0xFFFFB570),   '1.99','images/dragon_fruit.png',  '2 units',
      'Dragon fruit, also known as pitaya or the strawberry pear, is a beautiful tropical fruit that is sweet and crunchy.',
    ),
    Item('blueberry',Color(0xFFFCF8D5), '3.55',  'images/blueberry.png',    'each',
      'Blueberries can be eaten freshly picked or incorporated into a variety of recipes. They can also be purchased frozen.',
    ),
    Item('bananas',Color(0xFFFCE0E2),  '2.45','images/bananas.png', '1 kg',
      'Bananas are one of the most popular fruits worldwide. They contain essential nutrients that can have a protective impact on health.',
    ),
  ];
}