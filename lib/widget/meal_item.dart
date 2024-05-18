import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mealsapp/model/meal.dart';
import 'package:transparent_image/transparent_image.dart';

import 'meal_item_trait.dart';

class MealItem extends StatelessWidget {
  const MealItem({super.key,required this.meal, required this.onSelectMeal});
  final Meal meal;
  final void Function(Meal meal) onSelectMeal;
  String get complexityText{
    return meal.complexity.name;
  }
  String get affordabilityText{
    return meal.affordability.name;
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8),
         shape: RoundedRectangleBorder(
           borderRadius: BorderRadius.circular(10)
         ),
         clipBehavior: Clip.hardEdge,
        elevation: 2,
         child: InkWell(
           onTap: (){
             onSelectMeal(meal);
           },
           child: Stack(
             children: [
               FadeInImage(
                 placeholder: MemoryImage(kTransparentImage),
                 image: NetworkImage(meal.imageUrl),
                 fit: BoxFit.cover,
                 height: 150,
                 width: double.infinity,
               ),
               Positioned(
                   right: 0,
                   left: 0,
                   bottom: 0,
                   child: Container(
                     color: Colors.black54,
                     padding: EdgeInsets.symmetric(vertical: 6,horizontal: 10.sp),
                     child: Column(
                       children: [
                         Text(meal.title,maxLines: 2,textAlign: TextAlign.center,
                         softWrap: true,
                         overflow: TextOverflow.ellipsis,
                         style: TextStyle(fontSize: 20.sp,
                         fontWeight: FontWeight.bold
                         ,color: Colors.white),),
                         12.verticalSpace,
                         Padding(
                           padding: const EdgeInsets.only(left: 22.0),
                           child: Row(

                             children: [

                               MealItemTrait(icon:Icons.schedule,label:"${meal.duration} min"),
                               12.horizontalSpace,
                               MealItemTrait(icon:Icons.work,label:complexityText  ),
                               12.horizontalSpace,
                               MealItemTrait(icon:Icons.attach_money,label:affordabilityText,flex: 2,  ),
                             ],
                           ),
                         )
                       ],
                     ),
                   ))
             ],
           ),
         )
    );
  }
}
