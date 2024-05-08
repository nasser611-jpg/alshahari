import 'package:flutter/material.dart';
import 'package:alshahari/presentation/widgets/custom_app_bar.dart';
import 'package:alshahari/presentation/widgets/layout_prograph.dart';

class Another extends StatefulWidget {
  const Another({super.key});

  @override
  State<Another> createState() => _AnotherState();
}

class _AnotherState extends State<Another> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar('اخرى', Icons.label_important_outline_sharp),
      body: Center(child: Container(
        color: const Color.fromARGB(255, 145, 130, 80),
        alignment:Alignment.center,child: const Text('! اخرى  ',style: Styles.textBtn,),)),
    );
    
  }
}