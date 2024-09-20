import 'package:flutter/material.dart';
import 'package:fristapp/screen2/available_networks.dart';

class NetworkButton extends StatelessWidget {
  const NetworkButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Color.fromRGBO(185, 238, 255, 0.62),
        border: Border.all(color: Color.fromRGBO(0, 0, 0, 0.72)),
      ),
      //height: 60,
      width: double.infinity,
      child: FloatingActionButton(
        child: Text(
          'HomeAuto-AP',
          style: TextStyle(
            color: Colors.black,
            fontSize: 12,
            fontWeight: FontWeight.normal,
            fontFamily: 'Inter',
          ),
          textAlign: TextAlign.center,
        ),
        onPressed: () {
         Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const AvailableNetworks()),
          );
        },
      ),
    );
  }
}