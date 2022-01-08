import 'package:finalproject/models/popular.dart';
import 'package:scoped_model/scoped_model.dart';


class PopularList extends Model {
  List<Popular> popular = [
    Popular(imageN: 'ic_pink_rose_bouquet', flowerName: 'Angle', cost: 567.00),
    Popular(imageN: 'ic_red_rose_bouquet', flowerName: 'Jannien', cost: 567.00),
    Popular(imageN: 'JY523024', flowerName: 'Bright Alstromeria', cost: 730.00),
    Popular(imageN: 'white_roses', flowerName: 'White Roses', cost: 130),
    Popular(imageN: 'pretty_orchids', flowerName: 'Pretty Orchids', cost: 380),
    Popular(imageN: 'purple_flowers',flowerName: 'Daisy Purple',cost: 800),
    Popular(imageN: 'color_lilies', flowerName: 'Beauty Lilies', cost: 500),
    Popular(imageN: 'anemones', flowerName: 'White Anemones', cost: 900)
  ];
}