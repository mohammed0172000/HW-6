import 'package:flutter/material.dart';
import 'package:get_and_shared/component/custom_button.dart';
import 'package:get_and_shared/component/custom_text.dart';
import 'package:get_and_shared/helper/screen_helper.dart';

class Upper extends StatelessWidget {
  Upper({super.key});

  final textController1 = TextEditingController();
  final textController2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: 500,
            // MediaQuery.of(context).size.width,
            height: 400,
            // MediaQuery.of(context).size.height,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromARGB(255, 215, 243, 30),
                  Color.fromARGB(255, 55, 238, 146)
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),

            child: Padding(
              padding: const EdgeInsets.all(80.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      TextFiledW(textController: textController1, Name: "Name"),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: CustomButton(
                          onPressed: () {
                            textController1.clear();
                          },
                          text: ('Clear'),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      TextFiledW(
                          textController: textController2, Name: "Email"),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: CustomButton(
                          onPressed: () {
                            textController2.clear();
                          },
                          text: ('Clear'),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 30),
                        child: CustomButton(
                          onPressed: () {
                            CacheData.setData(key: 'user name', value:textController1.text);
                          },
                          text: '     Add     ',
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: CustomButton(
                          onPressed: () {
                            //list .clear
                          },
                          text: ('Clear List'),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

/*decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.white, Colors.blue],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ), */

/*
const SizedBox(
                  height: 20,
                ),
                TextFiledW(textController: textController, Name: "Email"),
                const SizedBox(
                  height: 20,
                ),
                CustomButton(
                  onPressed: () {
                    CacheData.setData(
                      key: 'user name',
                      value: textController.text,
                    );
                  },
                  text: '     Add     ',
                ),
                const SizedBox(
                  height: 15,
                ),
                CustomButton(
                  onPressed: () {},
                  text: ('Clear List'),
                ),







  String name = textController1.text.trim(),
                                email = textController2.text.trim();
                                if(name.isNotEmpty && customer.isNotEmpty){






                           CacheData.setData(
                              key: 'user name',
                              value: textController2.text,
                              
                            );


                              SetState((){customer.add(Customer(name: name, email: email));});


                                            String name = textController1.text.trim(),email = textController2.text.trim();

*/
