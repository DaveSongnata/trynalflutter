import 'package:flutter/material.dart';
import 'package:trynal/base/res/media.dart';
import 'package:trynal/base/res/styles/app_styles.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
           padding: const EdgeInsets.symmetric(horizontal: 5),
            children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    //color: const Color.fromARGB(221, 209, 241, 255),

                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15), 

                  child: Column(children: [
                     Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                            Column(
                              
                              crossAxisAlignment: CrossAxisAlignment.start,
                              
                              children: [
                              Text ("Seja bem vindo!", style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500, color: AppStyles.textColor)),
                              SizedBox(height: 5),  
                              Text ("Reservas", style: AppStyles.Title_1),
                              SizedBox(height: 5),
                            ],),
                          Container(
                          
                                    width: 70,
                                    height: 70,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      image: DecorationImage(
                                          image: AssetImage(AppMedia.logo)
                                      )
                                    ),
                          )
                  
                      ],
                    ), 
                    
                    
                    
                     Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [Text ("Procure por Viagens"), Text ("Skyflows")],
                    ),
                    
                  ],
                               
                  ),
                )

                  
],
        ),    
    );
  }
}