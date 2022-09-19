import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:newapp/widgets/black_button.dart';

class Choices extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20)),
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: [
                Color.fromRGBO(228, 50, 193, 1),
                Color.fromRGBO(46, 32, 219, 0.98)
              ],
            ),
          ),
        ),
        Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                children: const [
                  Text(
                    'CHANCE',
                    style: TextStyle(
                        fontFamily: 'Lato',
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.left,
                  ),
                  Text('11%',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontFamily: 'Lato',
                      ))
                ],
              ),
              const Icon(Icons.arrow_upward, color: Colors.green, size: 30),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: const [
                  Text('24H',
                      textAlign: TextAlign.end,
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold)),
                  Text(
                    '+25495\$',
                    style: TextStyle(
                        fontFamily: 'Lato',
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Column(
                children: [
                  Container(
                      padding: const EdgeInsets.only(bottom: 4),
                      child: const Text('\$09',
                          style: TextStyle(
                              fontFamily: 'Lato',
                              fontSize: 20,
                              color: Colors.white))),
                  Container(
                      height: 30,
                      width: 60,
                      child: ElevatedButton(
                          style: ButtonStyle(
                            elevation: MaterialStateProperty.all(15),
                            backgroundColor: MaterialStateProperty.all(
                                Color.fromRGBO(33, 255, 170, 1)),
                          ),
                          onPressed: () => null,
                          child: const Text(
                            'Yes',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          )))
                ],
              ),
              Column(
                children: [
                  Container(
                    padding: const EdgeInsets.only(bottom: 4),
                    child: const Text('\$89',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontFamily: 'Lato',
                        )),
                  ),
                  Container(
                      height: 30,
                      width: 60,
                      child: ElevatedButton(
                          style: ButtonStyle(
                            elevation: MaterialStateProperty.all(15),
                            backgroundColor: MaterialStateProperty.all(
                                Color.fromRGBO(228, 50, 193, 1)),
                          ),
                          onPressed: () => null,
                          child: const Text(
                            'No',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )))
                ],
              )
            ],
          ),
        ]),
      ],
    );
  }
}
