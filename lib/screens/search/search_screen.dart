import 'package:flutter/material.dart';
import 'package:trynal/base/res/styles/app_styles.dart';
import 'package:trynal/screens/search/widgets/app_tickets_tabs.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
     
        children: [
             SizedBox(height: 20),
          Text("O que você está procurando?", style: AppStyles.Title_1,),
          SizedBox(height: 20,),
         const AppTicketsTabs(),
],
      ),

    );
  }
}