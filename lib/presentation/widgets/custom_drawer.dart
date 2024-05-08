import 'package:flutter/material.dart';
import 'package:alshahari/core/layout_colors.dart';
import 'package:alshahari/presentation/screens/another.dart';
import 'package:alshahari/presentation/screens/about_app.dart';
import 'package:alshahari/presentation/screens/notifation.dart';
import 'package:alshahari/presentation/widgets/add_amount.dart';
import 'package:alshahari/presentation/screens/wifi_setting.dart';
import 'package:alshahari/presentation/widgets/subtitle_drawer.dart';
import 'package:alshahari/presentation/widgets/layout_prograph.dart';
import 'package:alshahari/presentation/widgets/menu_item_drawer.dart';


class Drawerr extends StatelessWidget {
   const Drawerr({
    super.key,
  });
  void _showLanguageDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('اختر اللغه',style: Styles.textBtn.copyWith(color: Colors.black),),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                GestureDetector(
                  child: const Text('English (En)',style: Styles.numbers,),
                  onTap: () {
                    Navigator.pop(context, 'En');
                    // Add your code here for when English is selected
                  },
                ),
                const Padding(padding: EdgeInsets.all(8.0)),
                GestureDetector(
                  child: const Text('Arabic (Ar)',style: Styles.numbers),
                  onTap: () {
                    Navigator.pop(context, 'Ar');
                    // Add your code here for when Arabic is selected
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }


  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 285,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.zero,
      ),
      child: Container(
        color: LayoutColors.whiteColor,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              const Center(
                  child: Padding(
                padding: EdgeInsets.symmetric(vertical: 36),
                child: AddAmountBtn(),
              )),
              const SubTitel(child: "الخـــــدمات"),
              MenuItemDrower(
                titel: "إعدادات الوافاي",
                icon:Icons.settings,
                onTap: () {
                  Navigator.pop(context);
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => const WifiSetting(),));
                },
              ),
              MenuItemDrower(
                titel: "  اللغه",
                icon: Icons.language,
                onTap: () {
                  Navigator.pop(context);
                build(context);
                  _showLanguageDialog(context);
                
                },
              ),
              MenuItemDrower(
                titel: "عن التطبيق",
                icon: Icons.info_outline,
                onTap: () {
                  Navigator.pop(context);
                Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => const AboutApp(),));
                },
              ),
              MenuItemDrower(
                titel: "الإشعارات",
                icon: Icons.notification_add_rounded,
                onTap: () {
                  Navigator.pop(context);
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => const Notifacation(),));
                },
              ),
          
         
              const SubTitel(child: "اخرى"),
              MenuItemDrower(
                titel: "اخرى",
                icon: Icons.add_chart,
                onTap: () {
                  Navigator.pop(context);
             Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => const Another(),));
                },
              ),
            
          
            ],
          ),
        ),
      ),
    );
  }
}
