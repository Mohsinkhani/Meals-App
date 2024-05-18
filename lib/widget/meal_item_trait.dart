import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MealItemTrait extends StatelessWidget {
  final int flex ;
  const MealItemTrait({super.key,
  required this.icon,
  required this.label,
   this.flex=1});
 final IconData icon;
 final String label;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: flex,
      child: Row(
        children: [
          Icon( icon,size: 17.sp,color: Colors.white,),
          5.horizontalSpace,
           Expanded(
             child: Align(
               alignment: Alignment.centerLeft,
               child: FittedBox(
                 fit: BoxFit.scaleDown,
                 child: Text(label,style: TextStyle(
                  color: Colors.white
                           ),),
               ),
             ),
           )
        ],
      ),
    );
  }
}
