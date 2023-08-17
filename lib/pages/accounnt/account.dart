


import 'package:app_nubnak/controlles/controlles_home_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class AcconuntNubnak extends StatefulWidget {
  const AcconuntNubnak({super.key});

  @override
  State<AcconuntNubnak> createState() => _AcconuntNubnakState();
}

class _AcconuntNubnakState extends State<AcconuntNubnak> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      child:  Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _accountChevron(),
          const SizedBox(height: 12),
          _moneyAccount(),
        ],
      ),
    );
  }
  _accountChevron(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text("Conta",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        IconButton(onPressed: (){}, icon: Icon(MdiIcons.chevronRight))
      ],
    );
  }
  _moneyAccount(){
    return GetBuilder<ControllerHomePage>(
      init: ControllerHomePage(),
      builder: (controllerHomePage) {
        return  Text(controllerHomePage.saldo,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        );
      }
    );
  }
}
