import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BookDetailUI extends StatelessWidget {
  const BookDetailUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        Padding(
          padding: const EdgeInsets.only(top: 20.0, left: 30.0),
          child: Row(
            children: [
              Icon(Icons.arrow_back),
              SizedBox(
                width: 70.0,
              ),
              Text(
                'Book Details',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 90,
              ),
              Icon(Icons.share)
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 50.0),
          child: Column(
            children: [
              Container(
                height: 170,
                width: 120,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/TheAngelOfRome.jpg'),
                        fit: BoxFit.fill),
                    borderRadius: BorderRadius.all(Radius.circular(20.0))),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 50.0),
          child: Container(
            width: double.infinity,
            height: 1000,
            decoration: BoxDecoration(
                color: CupertinoColors.extraLightBackgroundGray,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30.0),
                    topRight: Radius.circular(30.0))),
            child: Column(
              children: [
                Row(children: [
                  Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'The Angel Of Rome',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 24),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          'By Jess Walter',
                          style:
                              TextStyle(fontSize: 12, color: Colors.blueGrey),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  Icon(
                    Icons.bookmark,
                    size: 40.0,
                  )
                ]),
                Padding(
                  padding: const EdgeInsets.only(left: 30.0, right: 30.0),
                  child: Container(
                    width: double.infinity,
                    height: 70,
                    decoration: BoxDecoration(
                        color: Colors.blueGrey[100],
                        borderRadius: BorderRadius.circular(20.0)),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 30.0, right: 30.0, top: 10.0),
                      child: Container(
                        height: 70,
                        width: double.infinity,
                        child: Expanded(
                          child: Row(
                            children: [
                              Container(
                                child: Column(
                                  children: [
                                    Text(
                                      'Rating',
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                    SizedBox(
                                      height: 3,
                                    ),
                                    Row(
                                      children: [
                                        Text('5.0',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold)),
                                        Icon(
                                          Icons.star,
                                          color: Colors.yellow[700],
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              VerticalDivider(
                                color: Colors.black,
                                indent: 5,
                                endIndent: 15,
                                width: 60,
                              ),
                              Container(
                                child: Column(
                                  children: [
                                    Text(
                                      'Page',
                                      style: TextStyle(
                                          fontWeight: FontWeight.normal,
                                          color: Colors.grey),
                                    ),
                                    SizedBox(
                                      height: 7,
                                    ),
                                    Text(
                                      '220',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                              ),
                              VerticalDivider(
                                color: Colors.black,
                                indent: 5,
                                endIndent: 15,
                                width: 60,
                              ),
                              Container(
                                child: Column(
                                  children: [
                                    Text(
                                      'Language',
                                      style: TextStyle(
                                          fontWeight: FontWeight.normal,
                                          color: Colors.grey),
                                    ),
                                    Text(
                                      'English',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(top: 10.0, left: 30.0, right: 30.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Book Detail',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Container(
                        height: 200,
                        child: Text(
                            'Lorem ipsum dolor sit amet, consectetur adipiscing e'
                            'lit, sed do eiusmod tempor incididunt ut labore et dolore magna a'
                            'liqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco l'
                            'aboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dol'
                            'or in reprehenderit in voluptate velit esse cillum dolore eu fugia'
                            't nulla pariatur. Excepteur sint occaecat cupidatat non proident, '
                            'sunt in culpa qui officia deserunt mollit anim id est laborumLorem '
                            'ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod t'
                            'empor incididunt ut labore et dolore magna aliqua. Ut enim ad minim'
                            ' veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip '
                            'ex ea commodo consequat. Duis aute irure dolor in reprehenderit in '
                            'voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur'
                            ' sint occaecat cupidatat non proident, sunt in culpa qui officia '
                            'deserunt mollit anim id est laborum',
                            style: TextStyle(overflow: TextOverflow.fade)),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        )
      ]),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 30,right: 30,bottom: 10),
        child: Container(
          width: double.infinity,
          height: 60,
          child: Container(
            width: double.infinity,
            height: 60,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Continue', style: TextStyle(color: CupertinoColors.white,fontWeight: FontWeight.bold,fontSize: 20),),
              ],
            ),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.indigo[900],),
          )
        ),
      ),
    );
  }
}
