import 'package:app_nubnak/controlles/controlles_home_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class CreditCardPage extends StatelessWidget {
  const CreditCardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      child: Wrap(
        direction: Axis.vertical,
        crossAxisAlignment: WrapCrossAlignment.start,
        runSpacing: 20,
        spacing: 15,
        children: [
          _iconCreditCard(),
          _textCreditCard(),
          _moneyAccount(),
          _limiteDisponivel(),
          const SizedBox(height:5)
        ],
      ),
    );
  }

  _iconCreditCard() {
    return Icon(MdiIcons.creditCard);
  }

  _textCreditCard() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          "Cartão de crédito ",
          style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
        ),
        Icon(MdiIcons.chevronRight),
      ],
    );
  }

  _moneyAccount() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Fatura atual",
          style: TextStyle(
            color: Colors.grey,
          ),
        ),
        const SizedBox(height: 10),
        GetBuilder<ControllerHomePage>(
            init: ControllerHomePage(),
            builder: (controllerHomePage) {
              return Text(
                controllerHomePage.limite,
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              );
            }
            ),
      ],
    );
  }
  _limiteDisponivel(){
    return const Text(
      "Limite disponível de R\$ 5.000,00",
      style: TextStyle(
        color: Colors.grey,
      ),
    );
  }
}
