

import 'package:core_flutter_exam1/globals/globals.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          leading: Icon(Icons.menu,color: Colors.white,),
          title: Text(''),
          actions: [
            Padding(
              padding: const EdgeInsets.only(
                right: 20
              ),
              child: InkWell(
                onTap: () {
                  Navigator.of(context).pushNamed('/cart');
                },
                  child: Icon(Icons.shopping_cart,color: Colors.white,)),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 10,
                  left: 10,
                  right: 10
                ),
                child: Container(
                  height: 50,
                  width: 340,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    children: [
                      Container(
                          margin: EdgeInsets.only(left: 15,right: 10),
                          child: Icon(Icons.search,color: Colors.grey,)),
                      Text("Find your choice...",style: TextStyle(
                        color: Colors.grey
                      ),),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  height: 150,
                  width: 400,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child: Row(
                    children: [
                      Padding(

                        padding: const EdgeInsets.only(
                          left: 20
                        ),
                        child: Image.asset('assets/images/off.png',height: 100,),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 40,
                          left: 30
                        ),
                        child: Column(
                          children: [
                            Text('Get 10% off',style: TextStyle(fontSize: 25,color: Colors.white,fontWeight: FontWeight.bold),),
                            Text('On newest collection',style: TextStyle(fontSize: 15,color: Colors.white),),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 10,
                  left: 15,
                  right: 15
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Categories',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                    Text('View All',style: TextStyle(fontSize: 15,),),
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: BouncingScrollPhysics(),
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 20,top: 15),
                      height: 40,
                      width: 90,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Color(0xffdbbc9d),
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      alignment: Alignment.center,
                      child: Text('All'),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20,top: 15),
                      height: 40,
                      width: 90,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      alignment: Alignment.center,
                      child: Text('Rings',style: TextStyle(
                        color: Colors.white
                      ),),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20,top: 15),
                      height: 40,
                      width: 90,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Color(0xffdbbc9d),
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      alignment: Alignment.center,
                      child: Text('Necklases'),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20,top: 15),
                      height: 40,
                      width: 90,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Color(0xffdbbc9d),
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      alignment: Alignment.center,
                      child: Text('Earings'),
                    ),
                  ],
                ),
              ),
              Wrap(
                children: [
                  ...List.generate(productList.length, (index) => GestureDetector(
                    onTap: () {
                      selectedIndex=index;
                      Navigator.of(context).pushNamed('/detail');
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: buildContainer(
                        img: productList[index]['img'],
                        name: productList[index]['name'],
                        price: productList[index]['price'],
                      ),
                    ),
                  ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Container buildContainer({required String img,required String name,required double price}) {
    return Container(
                margin: EdgeInsets.only(top: 20),
                height: 220,
                width: 150,
                decoration: BoxDecoration(
                    color: Colors.grey,
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.white,
                          Color(0xffdbbc9d),

                        ]),
                    borderRadius: BorderRadius.circular(20)
                ),
                alignment: Alignment.topCenter,
                child: Column(
                  children: [
                    Container(
                        height: 100,
                        width: 120,
                        decoration: BoxDecoration(
                          // color: Colors.grey
                        ),
                        child: Image.asset(img,height: 20,)),

                    Padding(
                      padding: const EdgeInsets.only(
                          top: 15,left: 15,right: 15
                      ),
                      child: Text(name,style: TextStyle(fontSize: 15),),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          width: 15,
                        ),
                        Text('\$ $price',style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.bold
                        ),),

                        Container(
                          margin: EdgeInsets.only(
                              top: 17,
                              left: 46
                          ),
                          height: 35,
                          width: 35,
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius:BorderRadius.only(
                                bottomRight: Radius.circular(10),
                                topLeft: Radius.circular(10),
                              )
                          ),
                          child: Icon(Icons.add,color: Colors.white,),
                        )
                      ],
                    )
                  ],
                ),
              );
  }
}
