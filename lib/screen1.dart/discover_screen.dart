import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fristapp/screen1.dart/network_button.dart';

class DiscoverScreen extends StatelessWidget {
  const DiscoverScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Discover',
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              fontFamily: 'Inter',
              color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(0),
        ),
        constraints: BoxConstraints(maxWidth: 360),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(46),
                color: Colors.white,
              ),
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 22),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 50),
                  NetworkButton(),
                  SizedBox(height: 490),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 12, horizontal: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.refresh,
                          color: Color.fromRGBO(4, 87, 110, 1),
                        ),
                        SizedBox(width: 100),
                        Icon(
                          Icons.home_filled,
                          color: Color.fromRGBO(4, 87, 110, 1),
                        ),
                      ],
                    ),
                  ),
                  
                ],
              ),
            ),
          ],
        ),
      ),
      
    );
  }
}
