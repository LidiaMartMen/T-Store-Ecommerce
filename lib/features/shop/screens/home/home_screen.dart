import 'package:flutter/material.dart';
import 'package:t_store_firebase/features/widgets/widgets.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(child: 
        Column(children: [
        //Customshape:
        PrimaryHeaderContainer(child: Container(),)
      ],)),
    );
  }
}



