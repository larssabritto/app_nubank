import 'package:app_nubnak/utils/colors.standard.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class CreditsCard extends StatelessWidget {
  const CreditsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.fromLTRB(10, 10,10,10),
      decoration: BoxDecoration(
        color: greyColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          Icon(MdiIcons.creditCard,
            color: Colors.black,
          ),
          const SizedBox(width: 12),
          const Text("Meus cartões",
            style: TextStyle(
              fontWeight: FontWeight.bold
            ),
          )
        ],
      ),
    );
  }
}
