import 'package:flutter/material.dart';
import 'package:alshahari/presentation/widgets/custom_app_bar.dart';
import 'package:alshahari/presentation/widgets/wifi_setting_widget.dart';

class WifiSetting extends StatefulWidget {
  const WifiSetting({super.key});

  @override
  State<WifiSetting> createState() => _WifiSettingState();
}

class _WifiSettingState extends State<WifiSetting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: CustomAppBar('إعدادات الوافاي',Icons.settings),
    body: Container(
 
      alignment: Alignment.center,
      child: Column(
      children: [
        const BillContainer(
          imgUrl: 'images/wifi.jpg',
          title: '  وافاي 1',
          txt:'',
        ),
        const SizedBox(
          height: 8,
        ),
        const BillContainer(
          imgUrl: 'images/wifi.jpg',
          title:  'وافاي 2',
          txt: '',
        ),
        const SizedBox(height: 30,),
        GestureDetector(
          onTap: () {
          },
          child: const BillContainer(
            imgUrl: 'images/add.jpg',
            title:  'اضافه',
            txt: '',
          ),
        )
        
        ,],),),
    );
  }
}