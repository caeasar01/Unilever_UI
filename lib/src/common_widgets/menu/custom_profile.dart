import 'package:flutter/material.dart';
import 'package:unilever_app/src/common_widgets/app_bar/padding.dart';
import 'package:unilever_app/src/const/image_string.dart';

class CustomProfile extends StatelessWidget {
  const CustomProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber,
      alignment: Alignment.center,
        height: MediaQuery.of(context).size.height * 0.15,
        width: MediaQuery.of(context).size.width,
        child: CustomPadding(
          child: Row(
            children: [
              CircleAvatar(
                radius: MediaQuery.of(context).size.height * 0.05,
                child: Image.asset(logoImage, fit: BoxFit.cover,),
              ),
              CustomPadding(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Name",style: Theme.of(context).textTheme.displayMedium,),
                      Text("Number", style: Theme.of(context).textTheme.displayMedium,),
                      Text("Joined Time", style: Theme.of(context).textTheme.displaySmall,),
                    ],
                ),
              ),
            ],
          ),
        ),
      );
  }
}