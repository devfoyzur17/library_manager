// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_local_variable

import 'package:flutter/material.dart'; 
import 'package:library_manager/providers/library_provider.dart';
import 'package:library_manager/widgets/app_drawer.dart';
import 'package:library_manager/widgets/book_item.dart';
import 'package:library_manager/widgets/category_header.dart';
import 'package:library_manager/widgets/custom_appbar.dart';
import 'package:library_manager/widgets/home_category_books.dart';
import 'package:library_manager/widgets/slider.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  static const routeName = 'home-page';
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> { 

  @override
  void didChangeDependencies() { 
    super.didChangeDependencies();
  }

  @override
  void initState() { 

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    
    Provider.of<LibraryProvider>(context, listen: false).getAllCSEBooks();
    Provider.of<LibraryProvider>(context, listen: false).getAllBooks();
    Provider.of<LibraryProvider>(context, listen: false).getAllEEEBooks();
    Provider.of<LibraryProvider>(context, listen: false).getAllCIVILBooks();
    Provider.of<LibraryProvider>(context, listen: false).getAllTEXTILEBooks();
    Provider.of<LibraryProvider>(context, listen: false).getAllMECHANICALBooks();
    Provider.of<LibraryProvider>(context, listen: false).getAllSTORYBooks();
    Provider.of<LibraryProvider>(context, listen: false).getAllHISTORYBooks();
    Provider.of<LibraryProvider>(context, listen: false).getAllPOEMBooks();
    Provider.of<LibraryProvider>(context, listen: false).getAllISLAMICBooks();
    Provider.of<LibraryProvider>(context, listen: false).getAllMOTIVATIONALBooks();
    Provider.of<LibraryProvider>(context, listen: false).getAllHORRORBooks();
    Provider.of<LibraryProvider>(context, listen: false).getAllOTHERSBooks();
    return Scaffold(
        appBar: CustomAppbar("Library Management",context),
        drawer: AppDrawer(),
        body: Container(
          margin: EdgeInsets.only(left: 15, right: 15),
          child: ListView(
            children: [
              TopSlider(),
              Text(
                "Explore your books",
                textAlign: TextAlign.start,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                    color: Colors.black,
                    letterSpacing: 1,
                    wordSpacing: 1),
              ),
             Divider(),
              Container(
                height: 480,
                child: Consumer<LibraryProvider>(
                  builder: (context, provider, _) => Column(
                    children: [
                      CategoryHeader(
                        title: "All category Books",
                        bookList: provider.booksList,
                      ),
                      Expanded(
                        child: GridView.builder(
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            itemCount: provider.booksList.length > 6
                                ? 6
                                : provider.booksList.length,
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 3,
                                    childAspectRatio: 5 / 9,
                                    crossAxisSpacing: 2,
                                    mainAxisSpacing: 10),
                            itemBuilder: (context, index) => BookItem(
                                  bookItem: provider.booksList[index],
                                  bookList: provider.booksList,
                                  index : index,
                                )),
                      ),
                    ],
                  ),
                ),
              ),


              SizedBox(height: 20,),
             
              Consumer<LibraryProvider>(
                  builder: (context, provider, _) =>
              provider.cseBooksList.isEmpty  ? Container(): SizedBox(
                height: 280,
                child:  HomeCategoryBooks(title: "CSE", bookList: provider.cseBooksList)
                ),
              ),
 
               Consumer<LibraryProvider>(
                  builder: (context, provider, _) =>
              provider.eeeBooksList.isEmpty  ? Container(): SizedBox(
                height: 280,
                child:  HomeCategoryBooks(title: "EEE", bookList: provider.eeeBooksList)
                ),
              ),
           
              
            Consumer<LibraryProvider>(
                  builder: (context, provider, _) =>
              provider.civilBooksList.isEmpty  ? Container(): SizedBox(
                height: 280,
                child:  HomeCategoryBooks(title: "CIVIL", bookList: provider.civilBooksList)
                ),
              ), 
            
            Consumer<LibraryProvider>(
                  builder: (context, provider, _) =>
              provider.textileBooksList.isEmpty  ? Container(): SizedBox(
                height: 280,
                child:  HomeCategoryBooks(title: "Textile", bookList: provider.textileBooksList)
                ),
              ), 
            
            Consumer<LibraryProvider>(
                  builder: (context, provider, _) =>
              provider.mecanicalBooksList.isEmpty  ? Container(): SizedBox(
                height: 280,
                child:  HomeCategoryBooks(title: "Mechanical", bookList: provider.mecanicalBooksList)
                ),
              ), 
 
            Consumer<LibraryProvider>(
                  builder: (context, provider, _) =>
              provider.storyBooksList.isEmpty  ? Container(): SizedBox(
                height: 280,
                child:  HomeCategoryBooks(title: "Story", bookList: provider.storyBooksList)
                ),
              ),  
            Consumer<LibraryProvider>(
                  builder: (context, provider, _) =>
              provider.historyBooksList.isEmpty  ? Container(): SizedBox(
                height: 280,
                child:  HomeCategoryBooks(title: "History", bookList: provider.historyBooksList)
                ),
              ),  
            Consumer<LibraryProvider>(
                  builder: (context, provider, _) =>
              provider.poemBooksList.isEmpty  ? Container(): SizedBox(
                height: 280,
                child:  HomeCategoryBooks(title: "Poem", bookList: provider.poemBooksList)
                ),
              ),  
            Consumer<LibraryProvider>(
                  builder: (context, provider, _) =>
              provider.islamicBooksList.isEmpty  ? Container(): SizedBox(
                height: 280,
                child:  HomeCategoryBooks(title: "Islamic", bookList: provider.islamicBooksList)
                ),
              ), 
              
            Consumer<LibraryProvider>(
                  builder: (context, provider, _) =>
              provider.motivationalBooksList.isEmpty  ? Container(): SizedBox(
                height: 280,
                child:  HomeCategoryBooks(title: "Motivational", bookList: provider.motivationalBooksList)
                ),
              ),  
            Consumer<LibraryProvider>(
                  builder: (context, provider, _) =>
              provider.horrorBooksList.isEmpty  ? Container(): SizedBox(
                height: 280,
                child:  HomeCategoryBooks(title: "Horror", bookList: provider.horrorBooksList)
                ),
              ), 
              
            Consumer<LibraryProvider>(
                  builder: (context, provider, _) =>
              provider.othersBooksList.isEmpty  ? Container(): SizedBox(
                height: 280,
                child:  HomeCategoryBooks(title: "Others", bookList: provider.othersBooksList)
                ),
              ), 
             
           
            ],
          ),
        ));
  }
}
