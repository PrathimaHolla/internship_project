import 'package:finalproject/models/image.dart';
import 'package:scoped_model/scoped_model.dart';

class MenuList extends Model{
  List<Images> menu=[
    Images(
      imageName: "flower_yellow",
    ),
    Images(
      imageName: "flower_red",
    ),
    Images(
      imageName: "gift",
    ),

  ] ;
}