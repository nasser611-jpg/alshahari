import 'package:flutter/material.dart';
import 'package:alshahari/presentation/widgets/custom_app_bar.dart';
import 'package:alshahari/presentation/widgets/layout_prograph.dart';

class Notifacation extends StatefulWidget {
  const Notifacation({super.key});

  @override
  State<Notifacation> createState() => _NotifacationState();
}

class _NotifacationState extends State<Notifacation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar('الإشعارات', Icons.notifications_sharp),
      body: Center(child: Container(
        color: const Color.fromARGB(255, 145, 130, 80),
        alignment:Alignment.center,child: const Text('! لا توجد اشعارات حالياً ',style: Styles.textBtn,),)),
    );
    
  }
}