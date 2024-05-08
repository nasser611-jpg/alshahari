import 'package:flutter/material.dart';
import 'package:alshahari/presentation/widgets/layout_prograph.dart';

// ignore: non_constant_identifier_names
AppBar CustomAppBar(String title, IconData myIcon,) {
  return AppBar(  iconTheme: const IconThemeData(color: Colors.white),  // Set the AppBar icons to white
title: Text(title,style: Styles.headerList.copyWith(fontSize: 16),),centerTitle: true,
    flexibleSpace: Container(
      
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(8), bottomRight: Radius.circular(8)),
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color.fromARGB(255, 16, 151, 97),
                Color.fromARGB(255, 64, 213, 146),
                Color.fromARGB(255, 47, 157, 102),
                Color.fromARGB(255, 64, 235, 144),
           
              ])),
      padding: const EdgeInsets.only(
        top: 40,
        left: 15,
        right: 15,
      ),
      width: double.infinity,
      height: 100,
      child: Row(
        children: [
     Padding(
       padding: const EdgeInsets.only(top: 25),
       child: Icon(size: 28,
              myIcon,
              color: const Color.fromARGB(212, 255, 255, 255),
            ),
     ),
        const SizedBox(
            width: 3,
          ),
        
         
        
        ],
      ),
    ),
  );
}