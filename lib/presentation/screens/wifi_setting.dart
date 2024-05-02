import 'package:flutter/material.dart';
import 'package:alshahari/presentation/widgets/custom_app_bar.dart';
import 'package:alshahari/presentation/widgets/wifi_setting_widget.dart';

class WifiSetting extends StatefulWidget {
  const WifiSetting({Key? key}) : super(key: key);

  @override
  State<WifiSetting> createState() => _WifiSettingState();
}

class _WifiSettingState extends State<WifiSetting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: CustomAppBar('إعدادات الوافاي',Icons.settings),
    body: Container(
 
      
      child:const Column(
      children: [
        BillContainer(
          imgUrl: 'images/wifi.jpg',
          title: 'عنوان استلام الطلب',
          txt: 'أضافة',
        ),
        SizedBox(
          height: 8,
        ),
        BillContainer(
          imgUrl: 'images/wifi.jpg',
          title: 'ملاحظات الطلب',
          txt: 'أضافة',
        ),],),),
    );
  }
}