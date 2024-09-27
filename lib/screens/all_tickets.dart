import 'package:flutter/material.dart';
import 'package:trynal/base/res/styles/app_styles.dart';
import 'package:trynal/base/utils/all_json.dart';
import 'package:trynal/base/widgets/ticket_view.dart';

class AllTickets extends StatelessWidget {
  const AllTickets({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      
      appBar: AppBar(
          backgroundColor: AppStyles.bgColor,
        title: Center(child: Text("", style: AppStyles.Title_2,)),
       ),
      backgroundColor: AppStyles.bgColor,
        body: ListView(
          children: [
            Text("Tickets", style: TextStyle(fontSize: 24), textAlign: TextAlign.center,),
            Container(height: 20 ),
            SingleChildScrollView(
              child: Column(
                  children: ticketList.map((singleTicket) => TicketView(ticket: singleTicket)).toList(),
              ),
            )
          ],
        )
      
      );
  }
}