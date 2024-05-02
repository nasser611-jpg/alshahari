import 'package:flutter/material.dart';
import 'package:alshahari/presentation/widgets/custom_app_bar.dart';
import 'package:alshahari/presentation/widgets/layout_prograph.dart';

class AboutApp extends StatefulWidget {
  const AboutApp({Key? key}) : super(key: key);

  @override
  State<AboutApp> createState() => _AboutAppState();
}

class _AboutAppState extends State<AboutApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar('حول التطبيق', Icons.info_outlined),
      body: Center(child: Container(
        color: const Color.fromARGB(255, 145, 130, 80),
        alignment:Alignment.center,child: const Text('! This is an Elcterical Application  ',style: Styles.textBtn,),)),
    );
    
  }
}