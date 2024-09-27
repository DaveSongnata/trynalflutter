import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:trynal/base/res/media.dart';
import 'package:trynal/base/res/styles/app_styles.dart';
import 'package:trynal/base/utils/all_json.dart';
import 'package:trynal/base/widgets/app_double_text.dart';
import 'package:trynal/base/widgets/hotel.dart';
import 'package:trynal/base/widgets/ticket_view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: AppStyles.bgColor,
        title: Center(child: Text("", style: AppStyles.Title_2,)),
       ),
      backgroundColor: AppStyles.bgColor,
        body: ListView(
           padding: const EdgeInsets.symmetric(horizontal: 5),
            children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    //color: const Color.fromARGB(221, 209, 241, 255),

                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15), 

                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
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
                          Container(//n mexer
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
                    SizedBox(height: 25),

                     Container(
                      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color.fromARGB(255, 255, 255, 255),
                        

                      ),
                       child: 
                       const Row(
                        children: [Icon(FluentSystemIcons.ic_fluent_search_regular, color: Color(0xFFBFC205),), 
                        Text ("  Pesquisar...")],
                                           ),
                     ),
                     const SizedBox(height: 25),
                     AppDoubleText(bigText: 'Próximos Voos',smallText: 'Ver Mais', func: () => Navigator.pushNamed(context, "all_tickets")),
                    const SizedBox(height: 25),
                      SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: 
                     

                     Row(
                      children:
                       ticketList.take(2).map((singleTicket) {
                        return TicketView(ticket: singleTicket);

                       }
                      
                       ).toList(),
          )
                     ),
                     AppDoubleText(bigText: 'Hotéis',smallText: 'Ver Mais',func: () {
                 

                     }),

                      Container(height: 20),

                     SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row( 
                    children: 

                  
                  hotelList
                  .take(10)
                  .map((singleHotel) => Hotel(hotel: singleHotel)).toList(),
                      

                       
                    

                     )
                    ),
                  ],     

                  ),
             
                )

                  
],
        ),    
    );
  }
}