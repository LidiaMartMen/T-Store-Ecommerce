import 'package:flutter/material.dart';
import 'package:t_store_firebase/features/shop/widgets/widgets.dart';
import 'package:t_store_firebase/features/widgets/widgets.dart';
import 'package:t_store_firebase/utils/utils.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
          child: Column(
        children: [
          //Customshape:
          PrimaryHeaderContainer(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              CHomeAppBar(),
              SizedBox(
                height: CSizes.spaceBtwSections,
              ),

              //SEARCH BAR:
              CSearchBar(
                text: 'Search',
              ),
              SizedBox(
                height: CSizes.spaceBtwSections,
              ),

              //CATEGORIES:
              CVerticalImageText()
            ]),
          )
        ],
      )),
    );
  }
}

