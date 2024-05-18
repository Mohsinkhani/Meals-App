import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({super.key,  required this.onSelectScreen});
  final void Function(String identifier) onSelectScreen;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          DrawerHeader(
          padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors:[
                  Theme.of(context).colorScheme.primaryContainer,
                  Theme.of(context).colorScheme.primaryContainer.withOpacity(0.8),
                ],
                begin:Alignment.topLeft ,
                end: Alignment.bottomRight,
              )
            ),
            child: Row(
              children: [
                Icon(Icons.fastfood , size: 48,color: Theme.of(context).colorScheme.primary,),
                 Text("Cooking Up!",style: Theme.of(context).textTheme.titleLarge!.copyWith(
                   color: Theme.of(context).colorScheme.primary,
                 ))
              ],
            ),
          ),
          ListTile(
          leading: Icon(Icons.restaurant,size: 26.sp,color: Theme.of(context).colorScheme.onBackground,),
            title: Text("Meals",style:
    Theme.of(context).textTheme.titleSmall!.copyWith(
    color: Theme.of(context).colorScheme.onBackground,
    fontSize: 24.sp
            ),
          ),
    onTap:(){
            onSelectScreen("meals");
    },
          ),
          ListTile(
            leading: Icon(Icons.settings,size: 26.sp,color: Theme.of(context).colorScheme.onBackground,),
            title: Text("Filters",style:
            Theme.of(context).textTheme.titleSmall!.copyWith(
                color: Theme.of(context).colorScheme.onBackground,
                fontSize: 24.sp
            ),
            ),
            onTap:(){
              onSelectScreen("filters");
            },
          ),

        ],
      ),
    );
  }
}
