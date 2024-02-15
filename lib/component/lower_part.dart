import 'package:flutter/material.dart';
import 'package:get_and_shared/model/list_view.dart';

// ignore: must_be_immutable
class Lower extends StatelessWidget {
  Lower({super.key});
  List<Customer> customer = List.empty(growable: true);
  @override
  Widget build(BuildContext context) {
    return ListView(
          children: [
            Container(
                width: 500,
                height: 361,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color.fromARGB(255, 55, 238, 146),
                      Color.fromARGB(255, 215, 243, 30)
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),


                  child: ListView.builder(
                    itemCount: customer.length,
                    itemBuilder: (context, index) => getRow(index),
                    
                  ),
                ),
          ],
        
      
    );
  }
  Widget getRow(int index){
    return ListTile(
      title: Text(customer[index].email),leading:Text(customer[index].name),
    );
  }
}
