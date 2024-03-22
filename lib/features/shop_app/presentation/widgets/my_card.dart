import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:neobis_flutter_figma/core/constants/app_colors.dart';
import 'package:neobis_flutter_figma/core/constants/app_svg.dart';
import 'package:neobis_flutter_figma/features/shop_app/presentation/widgets/my_card_info.dart';

import '../../../../core/constants/app_images.dart';

class MyCard extends StatefulWidget {
  final int index;
  const MyCard({
    super.key,
    required this.index,
  });

  @override
  State<MyCard> createState() => _MyCardState();
}

class _MyCardState extends State<MyCard> {
  bool isSelected = false;
  void select(bool? newValue){
    setState(() {
      isSelected = newValue!;
    });
    showBottomSheet(context: context, builder: (BuildContext context){
      return SizedBox(
        height: 72,
        width: MediaQuery.sizeOf(context).width,
        child: Text('Anas'),
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 16),
      child: Container(
        height: 154,
        padding: const EdgeInsets.all(11),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.all(Radius.circular(12)),
          border: Border.all(
              color: isSelected ? AppColors.blue : Colors.transparent),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 0,
              blurRadius: 20, // Increased blur radius
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  '№54931',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  width: 20,
                  height: 20,
                  child: Checkbox(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    activeColor: AppColors.blue,
                    value: isSelected,
                    onChanged:select
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            MyCardInfo(
              image: AppImages.image + '${widget.index % 4 + 1}.png',
            ),
            const SizedBox(height: 4),
            Row(
              children: [
                const SizedBox(width: 80),
                SvgPicture.asset(AppSvg.cube),
                const SizedBox(width: 4),
                const Text(
                  'Склад',
                  style: TextStyle(color: AppColors.textColor),
                ),
                const Expanded(
                  child: Text(
                    '120 шт',
                    textAlign: TextAlign.end,
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
