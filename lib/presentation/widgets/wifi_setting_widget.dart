import 'package:alshahari/presentation/widgets/layout_prograph.dart';
import 'package:flutter/material.dart';


class BillContainer extends StatelessWidget {
  const BillContainer(
      {Key? key, required this.txt, required this.imgUrl, required this.title})
      : super(key: key);
  final String txt;
  final String imgUrl;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
            padding: const EdgeInsets.only(left: 9),
            width: 360,
            height: 42,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: const Color(0xff27303F)),
            child: Row(
              textDirection: TextDirection.rtl,
              children: [
                Container(
                  margin: const EdgeInsets.only(
                      left: 8, right: 8, bottom: 3, top: 3),
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white,
                    image: DecorationImage(image: AssetImage(imgUrl))
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
                Text(
                  title,
                  style: Styles.bodyText.copyWith(color: Colors.white),
                ),
                const Spacer(),
                Text(
                  txt,
                  style: Styles.bodyText.copyWith(color: Colors.white),
                )
              ],
            )),
      ],
    );
  }
}
