import 'package:flutter/material.dart';

class NetworkItem extends StatelessWidget {
  final String name;
  //final String iconUrl;

  const NetworkItem({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 226,
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 11),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(19),
        color: Color.fromRGBO(212, 245, 255, 1),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            name,
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w500,
              fontFamily: 'Inter',
              color: Colors.black
            ),
          ),
          Icon(Icons.wifi)
        ],
      ),
    );
  }
}