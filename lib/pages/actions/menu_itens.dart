import 'package:app_nubnak/utils/colors.standard.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class MenuItens extends StatelessWidget {
  const MenuItens({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 12),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Wrap(
          direction: Axis.horizontal,
          children: [
            _itemMenu(
              icon: Icons.pix_outlined,
              name: "Área pix",
              isFisrt: true,
            ),
            _itemMenu(
              icon: MdiIcons.barcode,
              name: "Pagar",
            ),
            _itemMenu(
              icon: MdiIcons.transfer,
              name: "Transferir",
            ),
            _itemMenu(
              icon: MdiIcons.cash,
              name: "Depositar",
            ),
            _itemMenu(
              icon: MdiIcons.creditCard,
              name: "Recarga",
            ),
            _itemMenu(
              icon: MdiIcons.heartOutline,
              name: "Doação",
            ),
          ],
        ),
      ),
    );
  }
  _itemMenu({required IconData icon, required String name, bool ? isFisrt}){
    return Container(
      padding: (isFisrt ?? false )? const EdgeInsets.only(right: 7,left: 20)
      : const EdgeInsets.symmetric(horizontal: 7),
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 10),
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: greyColor,
              borderRadius: BorderRadius.circular(48),
            ),
            child: Icon(icon),
          ),
          Text(name,
          style: const TextStyle(
          fontWeight: FontWeight.bold
          ),
          ),
        ],
      ),
    );
  }
}
