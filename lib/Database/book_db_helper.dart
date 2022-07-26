import 'package:library_manager/models/book_model.dart';
import 'package:path/path.dart' as path;
import 'package:sqflite/sqflite.dart';

class BookDBHelper {
  static const _createBooksDatabaseTable = '''
  create table $booksTableName(
    $booksTableColId integer primary key,
    $booksTableBookImageColName text,
    $booksTableBookColName text,
    $booksTableBookColAuthorName text,
    $booksTableBookQuantityColName integer,
    $booksTableBookDescriptionColName text,
    $booksTableBookCategoryColName text 
  )
''';

  static Future<Database> open() async {

    final root = await getDatabasesPath();

    final dbPath = path.join(root, "book_info.db");
    print("Path $dbPath");
    return openDatabase(dbPath, version: 1, onCreate: (db, version) {
      db.execute(_createBooksDatabaseTable);
    });
  }

  static Future<int> insertBook(BookModel bookModel) async{
    final db = await open(); 
    return db.insert(booksTableName, bookModel.toMap());
    
  }

  static Future<List<BookModel>> getAllCSEBooks() async {
    final db = await open();
    final List<Map<String, dynamic>> mapList = await db.query(booksTableName,where: "$booksTableBookCategoryColName = ?", whereArgs: ["CSE"]);
    return List.generate(mapList.length, (index) => BookModel.fromMap(mapList[index]));

  }





}
