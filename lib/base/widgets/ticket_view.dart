import 'package:flutter/material.dart';
import 'package:trynal/base/res/styles/app_styles.dart';
import 'package:trynal/base/widgets/app_layoutbuilder_widget.dart';
import 'package:trynal/base/widgets/big_circle.dart';
import 'package:trynal/base/widgets/big_dot.dart';
import 'package:trynal/base/widgets/text_style_fourth.dart';
import 'package:trynal/base/widgets/text_style_third.dart';

class TicketView extends StatelessWidget { 
  const TicketView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width*0.80,
      height: 179,
      child: Container(
        
       
        child: Column(
          children: [


              //FIRST TICKET
            Container(
              padding: EdgeInsets.all(16),
                child: Column(
                  children: [
                      Row(
                        children: [
                          TextStyleThird(text: "MAO"),
                             Expanded(child: Container()),
                          BigDot(),
                          Expanded(child: Stack(children: [
                            SizedBox(
                            height: 24, 
                            child: AppLayoutbuilderWidget(randomDivider: 6
                            )),
                            Center(child:Transform.rotate(angle: 1.57 , child: Icon(Icons.local_airport_rounded, color: Colors.white,),))
                            ],)),
                          BigDot(),
                             Expanded(child: Container()),
                          TextStyleThird(text: "GRU"),
                        ],),
            
                    Row(
                        children: [
                          SizedBox(width: 100, child: Text("Manaus", style: AppStyles.Title_3.copyWith(color: Colors.white))),
                             Expanded(child: Container()), 
                         TextStyleThird(text: "08H 30M"),
                             Expanded(child: Container()),
                          SizedBox(width: 100, child: TextStyleFourth(text: "Guarulhos", align: TextAlign.end,)),
                        ],),
            
                  ],
                ),
                
                decoration: BoxDecoration(
                  color: AppStyles.ticket_blueColor,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(21), topRight: Radius.circular(21))
                ),
            
            ),
         
            Container(
              color: AppStyles.ticket_orangeColor,
child: Row(
  children: [

    BigCircle(isRight: false,),
              Expanded(child: AppLayoutbuilderWidget(randomDivider: 16, width: 6,)),
    BigCircle(isRight: true,),

  ],

),

            ),    
              //SECOND TICKET
            Container(
              padding: EdgeInsets.all(16),
                child: Column(
                  children: [
                      Row(
                        children: [
                          Text("17 MAI", style: AppStyles.Title_0.copyWith(color: Colors.white)),
                             Expanded(child: Container()),
                          Expanded(child: Stack(children: [
                            Text("17:30 PM", style: AppStyles.Title_0.copyWith(color: Colors.white)),
                            ],)),
                             Expanded(child: Container()),
                          Text("223", style: AppStyles.Title_0.copyWith(color: Colors.white)),
                        ],),
            
                       Row(
                        children: [
                          SizedBox(width: 110, child: Text("Data", style: AppStyles.Title_3.copyWith(color: Colors.white))),
                             Expanded(child: Container()), 
                         TextStyleFourth(text: "Partida"),
                             Expanded(child: Container()),
                          SizedBox(width: 100, child: TextStyleFourth(text: "Número", align: TextAlign.end,)),
                        ],),
            
                  ],
                ),
                
                decoration: BoxDecoration(
                  color: AppStyles.ticket_orangeColor,
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(21), bottomRight: Radius.circular(21))
                ),
            
            ),
         
],

          
        ),
      
      
      
      ),
    );
  }
}