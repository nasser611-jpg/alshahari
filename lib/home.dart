import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:alshahari/presentation/widgets/custom_drawer.dart';
import 'package:alshahari/presentation/widgets/custom_app_bar.dart';
import 'package:alshahari/presentation/widgets/layout_prograph.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ImagePicker _picker = ImagePicker();
  void captureImage() async {
    final XFile? image = await _picker.pickImage(source: ImageSource.camera);
    if (image != null) {
      // Do something with the captured image
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar('الرئيسية', Icons.home_outlined),
      endDrawer: const Drawerr(),
      body: Container(
   
        margin: const EdgeInsets.all(8),
        height: MediaQuery.of(context).size.height * 0.83,
        decoration: BoxDecoration(
          color: Colors.white,
            border: Border.all(width: 2,
                color:
                    const Color.fromARGB(255, 172, 169, 169).withOpacity(0.2)),
            borderRadius: BorderRadius.circular(12)),
        child: ListView.builder(
          itemCount: 3,
          itemBuilder: (context, index) {
            return ExpansionTile(
              title: Container(
                width: 260,
                height: 40,
                decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(40),
                    border: Border.all(
                        color: Colors.green.withOpacity(0.4), width: 1)),
                child: Center(
                    child: Text(
                  '${index + 1}  لوح ',
                  style: Styles.mainTitelMenu.copyWith(fontSize: 15),
                )),
              ),
              leading: const Icon(Icons.branding_watermark_outlined), // Optional leading icon
              children: const <Widget>[
                ListTile(
                  title: Text(
                    "12 V",
                    textAlign: TextAlign.center,
                    style: Styles.numbers,
                  ),
                  leading: Icon(
                    Icons.electric_bolt_rounded,
                    textDirection: TextDirection.rtl,
                    color: Colors.orange,
                    size: 28,
                  ),
                ),
              ],
            );
          },
        ),
      ),
      floatingActionButton: Stack(
        children: [
          Positioned(
            bottom: 25.0,
            left: 40.0, // Adjust the left position as needed
            child: FloatingActionButton(
              onPressed: captureImage,
              child: const Icon(Icons.camera_alt),
            ),
          ),
        ],
      ),
    );
  }
}
