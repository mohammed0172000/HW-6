import 'package:flutter/material.dart';
import 'package:get_and_shared/component/lower_part.dart';
import 'package:get_and_shared/component/upper_part.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SafeArea(child: 
          Container(
            height: 400,
            width: 500,
            child: Upper(),
          ),
          ),
          SafeArea(child: 
          Container(
            height: 361,
            width: 500,
            child: Lower(),

          )
          )
        ],
      ),
    );
  }
}

/*
import 'package:flutter/material.dart';
import 'package:get_and_shared/component/lower_part.dart';
import 'package:get_and_shared/component/upper_part.dart';

class HomeScreen extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width, // Full width of the screen
            height: MediaQuery.of(context).size.height, // Full height of the screen
            child: Column(
              children: [
                Upper(),
            // SizedBox         (height: 20), // Adjust the spacing as needed
                Lower(), // Add your another child widget here
              ],
            ),
          ),
        ],
      ),
    );
  }
}*/
