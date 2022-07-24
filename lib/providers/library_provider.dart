
import 'package:flutter/cupertino.dart';
import 'package:library_manager/models/category_model.dart'; 

class LibraryProvider extends ChangeNotifier{



      List<CategoryItemModel> categoryItemList =[
        CategoryItemModel(image: "assets/images/books.png", name: "CSE"),
        CategoryItemModel(image: "assets/images/books.png", name: "EEE"),
        CategoryItemModel(image: "assets/images/books.png", name: "Mechanical"),
        CategoryItemModel(image: "assets/images/books.png", name: "Textile"),
        CategoryItemModel(image: "assets/images/books.png", name: "Story"),
        CategoryItemModel(image: "assets/images/books.png", name: "History"),
        CategoryItemModel(image: "assets/images/books.png", name: "Poem"),
        CategoryItemModel(image: "assets/images/books.png", name: "Islamic"),
        CategoryItemModel(image: "assets/images/books.png", name: "Motivational"),
        CategoryItemModel(image: "assets/images/books.png", name: "Horror"),
        CategoryItemModel(image: "assets/images/books.png", name: "Others"),
      ];


}