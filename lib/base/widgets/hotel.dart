import 'package:flutter/material.dart';
import 'package:trynal/base/res/media.dart';
import 'package:trynal/base/res/styles/app_styles.dart';

class Hotel extends StatelessWidget {
  final Map<String, dynamic> hotel;
  const Hotel({super.key, required this.hotel});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
          width: 250,
          height: 350,
          margin:EdgeInsets.only(right: 20) ,

          decoration: BoxDecoration(
              color: AppStyles.primaryColor,
              borderRadius: BorderRadius.circular(24)

          ),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Container(
                
                height: 180,
                decoration: BoxDecoration(
              color: AppStyles.primaryColor,
              borderRadius: BorderRadius.circular(24),
              
              image: DecorationImage(
                  fit: BoxFit.cover,
                image: AssetImage("assets/images/${hotel['image']}"),

              
              ),

          ),
              ),
      SizedBox(height: 10),
      Padding(
        padding: const EdgeInsets.all(1),
        child: Text(hotel['place'], style: AppStyles.Title_1.copyWith(color: AppStyles.kakiColor),)),

       Padding(
        padding: const EdgeInsets.all(1),
        child: Text(hotel['destination'], style: AppStyles.Title_4.copyWith(color: AppStyles.bgColor),)),

         Padding(
        padding: const EdgeInsets.all(1),
        child: Text("R\$${hotel['price']}/noite", style: AppStyles.Title_1.copyWith(color: AppStyles.kakiColor),)),
            ],
          ),
      
    );
  }
}