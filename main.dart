//Construct a class Author with attributes like name and publications.
// Design a class Book that contains an instance of Author
// and attributes like title and yearPublished.
// + when the user slect author show all books

import 'dart:html';
import 'dart:io';
import 'author.dart';
import 'book.dart';

void main(){

Author author1 =Author(name: "Sara", numPublications: 15);
Author author2 =Author(name: "Ahmed", numPublications: 35);

Book book1 =Book(
author: author1,
title: "Dart",
yearPublished:1998,
price: 23
);

Book book2 =Book(
author: author1,
title: "Java",
yearPublished:2018,
price: 16
);

Book book3 =Book(
author: author2,
title: "Math",
yearPublished:2004,
price: 4.5
);

Book book4 =Book(
author: author2,
title: "Arabic",
yearPublished:2019,
price: 10.6
);

List <Book> books =[book1,book2,book3,book4];
List<Author> author =[author1,author2];

print("Welcome to our store");
print("please choose one of our authors:");
for(var element in author){
  print("${element.name} and ${element.numPublications}");
  String name =stdin.readLineSync()!;
  List<Book> filterBook = books.where((e) => e.author!.name ==name).toList();
  for (var element in filterBook){
    print("${element.title} with price ${element.price} - ${element.yearPublished}");
  }
}



}



















  // String selectedAuthor = 'Author 1'; // Change this based on user input

  // List<Book>? selectedBooks = library[selectedAuthor];

  // if (selectedBooks != null) {
  //   print('Books by $selectedAuthor:');
  //   for (var book in selectedBooks) {
  //     print('Title: ${book.title}');
  //   }
  // } else {
  //   print('Author not found in the library.');
  // }

//------------------------




// String targetAuthor = [];
//   print(" book ${targetAuthor}:");
//   for (var book in books) {
//     if (book.author == targetAuthor) {
//       print(": ${book.title}");
//     }
//   }

// Book book = Book("book" , 2023, a);

// Author author = Author("sara", 120);
























  // print("Book Title: ${book.title}");
  // print("Year Published: ${book.yearPublished}");
  // print("Author: ${book.author.name}");
  // print("Author's Publications: ${book.author.publications}");