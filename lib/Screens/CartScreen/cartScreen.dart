import 'package:core_flutter_exam1/globals/globals.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar :AppBar(
        centerTitle: true,
         backgroundColor: Colors.black,
        leading: Icon(Icons.arrow_back,color: Colors.white,),
        title: Text('My cart',style: TextStyle(
          color: Colors.white
        ),),
        actions: [
          Padding(
            padding: const EdgeInsets.only(
                right: 20
            ),
            child: Icon(Icons.favorite,color: Colors.white,),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  ...List.generate(cartList.length, (index) =>Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Container(
                      height: 100,
                      width: 400,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Colors.white,
                              Color(0xffdbbc9d),
                            ]),
                      ),
                      alignment: Alignment.centerLeft,
                      child:Row(
                        children: [
                          Container(
                            height:80,
                            width: 80,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(cartList[index]['img']),
                                    fit: BoxFit.cover
                                )
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 10,top: 30),
                            child: Column(
                              children: [
                                Text('${cartList[index]['name']}',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                                Text('\$ ${cartList[index]['price']}',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                              ],
                            ),
                          ),
                          Container(
                              margin: EdgeInsets.only(left: 30),
                              child: InkWell(
                                onTap: () {
                                  setState(() {
              
                                    cartList.removeAt(index);
                                  });
                                },
                                  child: Icon(Icons.delete,color: Colors.black,size: 25,)))
                        ],
                      ),
                    ),
                  ) ),
                  
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Text("Total"),
                    Text("\$ $amount",style: TextStyle(
                      fontWeight: FontWeight.bold
                    ),),
                  ],
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamed('/order');
                  },
                  child: Container(
                      height: 50,
                      width: 250,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      alignment: Alignment.center,
                      child: Text("Order Placed",style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),)
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ),);
  }

}
