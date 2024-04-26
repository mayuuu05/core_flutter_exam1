import 'package:core_flutter_exam1/globals/globals.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailaScreen extends StatefulWidget {
  const DetailaScreen({super.key});

  @override
  State<DetailaScreen> createState() => _DetailaScreenState();
}

class _DetailaScreenState extends State<DetailaScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.black,
        leading: Icon(Icons.arrow_back,color: Colors.white,),
        title: Text(''),
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
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            height: 300,
            width: 400,
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
            child: Image.asset(productList[selectedIndex]['img'],),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 15,
              right: 15,
              top: 10
            ),
            child: Text('${productList[selectedIndex]['name']}',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
          ),
          Text('\$ ${productList[selectedIndex]['price']}',style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold
          ),),
          Padding(
            padding: const EdgeInsets.only(
              left: 15,
              right: 15,
              top: 10
            ),
            child: Align(
              alignment: Alignment.centerLeft,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Description',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                  Icon(Icons.favorite_outlined,color: Colors.red,)
                  ],
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 15,
              right: 15,
              top: 10

            ),
            child: Text('Keep your hands nimble and agile with personalized hand exercise routines recommended by experts. Whether you are looking to prevent hand stiffness or improve dexterity, Hand Ring offers a variety of exercises tailored to your needs. Stay motivated and engaged with fun challenges designed to promote wellness and mindfulness. Compete with friends or challenge yourself to achieve daily goals and earn rewards along the way.',style: TextStyle(fontSize: 13,),),
          ),
          GestureDetector(
            onTap: () {
              cartList.add(productList[selectedIndex]);
              for(int i=0;i<cartList.length ;i++)
                {
                  amount = amount+cartList[i]['price'];
                }
            },
            child: Container(
              height: 50,
              width: 340,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(10),
              ),
              alignment: Alignment.center,
              child: Text("Add to Cart",style: TextStyle(
                  color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),)
            ),
          ),
        ],
      ),
    ),);
  }
}
