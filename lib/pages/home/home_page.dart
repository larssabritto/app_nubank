

import 'package:app_nubnak/pages/accounnt/account.dart';
import 'package:app_nubnak/pages/actions/menu_itens.dart';
import 'package:app_nubnak/pages/creditsCard/credit_cards_page.dart';
import 'package:app_nubnak/pages/creditsCard/credits_card.dart';
import 'package:app_nubnak/pages/home/model/hearder.dart';
import 'package:app_nubnak/pages/notification/notification_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child:const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
             Header(),
              AcconuntNubnak(),
              MenuItens(),
              CreditsCard(),
              Divider(thickness: 1.6),
              NotificationPage(),
              SizedBox(height:20),
              Divider(thickness: 1.6),
              SizedBox(height:10),
              CreditCardPage(),
            ],
          ),
        ),
      ),
    );
  }
  PreferredSize _appBar(){
    return PreferredSize(
        preferredSize: const Size.fromHeight(0),
        child: AppBar(
          elevation: 0,
          systemOverlayStyle: SystemUiOverlayStyle.dark,
        ),
    );
  }
}
