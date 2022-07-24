import 'package:flutter/cupertino.dart';
import 'package:library_manager/Database/admin_bd_helper.dart';
import 'package:library_manager/models/admin_db_model.dart';
import 'package:library_manager/models/category_model.dart';

class LibraryProvider extends ChangeNotifier {
  List<AdminDatabaseModel> adminList = [];

  List<CategoryItemModel> categoryItemList = [
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

  Future<bool> addNewAdmin(AdminDatabaseModel adminDatabaseModel) async {
    final rowId = await AdminDBHelper.insertAdmin(adminDatabaseModel);
    if (rowId > 0) {
      adminDatabaseModel.id = rowId;
      adminList.add(adminDatabaseModel);
      notifyListeners();
      return true;
    }
    return false;
  }
}
