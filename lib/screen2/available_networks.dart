import 'package:flutter/material.dart';
import 'package:fristapp/screen2/network_form.dart';
import 'package:fristapp/screen2/network_item.dart';


class AvailableNetworks extends StatelessWidget {
  const AvailableNetworks({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
                'Available Networks',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Inter',
                  color: Colors.black
                ),
              ),
              centerTitle: true,
      ),
      body: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(46),
          color: Colors.white,
        ),
        padding: const EdgeInsets.fromLTRB(15, 0, 15, 14),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              
              const SizedBox(height: 58),
              const NetworkItem(name: 'Home Wifi', ),
              const SizedBox(height: 21),
              const NetworkItem(name: 'Office Wifi', ),
              const SizedBox(height: 21),
              const NetworkItem(name: 'Public Wifi', ),
              const SizedBox(height: 21),
              const NetworkItem(name: 'Private Wifi', ),
              const SizedBox(height: 21),
              const NetworkForm(),
              const SizedBox(height: 16),
              SingleChildScrollView(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _buildButton('Refresh'),
                    SizedBox(width: 50),
                    _buildButton('Save'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildButton(String text) {
    return Container(
      width: 100,
      padding: EdgeInsets.symmetric(vertical: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Color.fromRGBO(185, 238, 255, 0.62),
        border: Border.all(color: Colors.black.withOpacity(0.72)),
      ),
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: const TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w400,
          fontFamily: 'Inter',
        ),
      ),
    );
  }
}