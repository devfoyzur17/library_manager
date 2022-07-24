
import 'package:flutter/cupertino.dart';
import 'package:library_manager/models/category_model.dart'; 

class LibraryProvider extends ChangeNotifier{



      List<CategoryItemModel> categoryItemList =[
        CategoryItemModel(image: "assets/images/books.png", name: "CSE"),
        CategoryItemModel(image: "assets/images/books.png", name: "EEE"),
        CategoryItemModel(image: "assets/images/books.png", name: "MECHANICAL"),
        CategoryItemModel(image: "assets/images/books.png", name: "TEXTILE"),
        CategoryItemModel(image: "assets/images/books.png", name: "STORY"),
        CategoryItemModel(image: "assets/images/books.png", name: "HISTORY"),
        CategoryItemModel(image: "assets/images/books.png", name: "POEM"),
        CategoryItemModel(image: "assets/images/books.png", name: "ISLAMIC"),
        CategoryItemModel(image: "assets/images/books.png", name: "MOTIVATIONAL"),
        CategoryItemModel(image: "assets/images/books.png", name: "HORROR"),
        CategoryItemModel(image: "assets/images/books.png", name: "OTHERS"),
      ];


}