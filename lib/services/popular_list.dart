import 'package:finalproject/models/popular.dart';
import 'package:scoped_model/scoped_model.dart';


class PopularList extends Model{
  List<Popular> popular=[
    Popular(
      imageN:'ic_pink_rose_bouquet',
      flowerName:'Angle',
      cost:567.00
    ),
    Popular(
      imageN:'ic_red_rose_bouquet',
      flowerName:'Jannien',
      cost:567.00
    )
  ];
}