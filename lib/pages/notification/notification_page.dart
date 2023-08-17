import 'package:app_nubnak/utils/colors.standard.dart';
import 'package:flutter/material.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          _rendimentos(),
          _saveMoney(),
          _securityLife(),
        ],
      ),
    );
  }

  _rendimentos() {
    return Container(
      margin: const EdgeInsets.only(left: 10, top: 10, right: 20),
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
          color: greyColor,
          borderRadius: BorderRadius.circular(16)
      ),
      child: RichText(
        text: TextSpan(
          children: [
            const TextSpan(text: "Seu ",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 16),
            ),
            TextSpan(text: " informe de \nredimentos",
              style: TextStyle(
                  color: backgroundColor,
                  fontSize: 16),
            ),
            const TextSpan(text: "de 2023 já está...",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }

  _saveMoney() {
    return Container(
      margin: const EdgeInsets.only(left: 10, top: 10, right: 20),
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
          color: greyColor,
          borderRadius: BorderRadius.circular(16)
      ),
      child: RichText(
        text: TextSpan(
          children: [
            const TextSpan(text: "Chegou o",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 16),
            ),
            TextSpan(text: "débito \nautomático da fatura do...",
              style: TextStyle(
                  color: backgroundColor,
                  fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }

  _securityLife() {
    return Container(
      margin: const EdgeInsets.only(left: 10, top: 10, right: 10),
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
          color: greyColor,
          borderRadius: BorderRadius.circular(16)
      ),
      child: RichText(
        text: TextSpan(
          children: [
          const TextSpan(text: "Conheça ",
          style: TextStyle(
              color: Colors.black,
              fontSize: 16),
        ),
        TextSpan(
          text: "Nubank Vida\n",
          style: TextStyle(
              color: backgroundColor,
              fontSize: 16),
        ),
            const TextSpan(
              children: [
                TextSpan(text: "um seguro simple...",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16),
                ),
              ],
            ),
        ],
      ),
    )
    );
  }
}
