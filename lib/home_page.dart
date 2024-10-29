import 'package:list_kuliner/list_item.dart';
import 'package:list_kuliner/makanan.dart';
import 'package:list_kuliner/styles.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: pageBgColor,
        appBar: AppBar(
          backgroundColor: headerBackColor,
          title: const Text("Warung Rasa Tak Sedap", style: textHeader1),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: listMakanan.length,
          padding: const EdgeInsets.all(10),
          itemBuilder: (context, index) {
            return ListItem(makanan: listMakanan[index]);
          },
        ),
      ),
    );
  }
}