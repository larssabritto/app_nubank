import 'package:get/get.dart';

class ControllerHomePage extends GetxController{
  String limite = "R\$8,0000,00";
  String fatura = "R\$5000,00";
  String saldo = "R\$ 873.2400,00";
  bool eyesValue = true;

  void mostrarValor(){
    eyesValue = !eyesValue;
    update();
  }

}