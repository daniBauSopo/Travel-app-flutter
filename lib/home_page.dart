import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:travel_app/model_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child:Padding(
        padding: EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment:CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                  Icon(Icons.dehaze,color: Colors.black),
                  Image(
                    image: NetworkImage('https://cdn-icons-png.flaticon.com/512/147/147140.png',scale: 10)
                  )
              ],
            ),
            Padding(
              padding: EdgeInsets.only(left: 20.0,top: 40.0,bottom: 50),
              child:
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Discover",style: TextStyle(fontWeight: FontWeight.bold,fontFamily: 'VarelaRound',color: Colors.black,fontSize: 30, decoration: TextDecoration.none),),
                  SizedBox(height: 10,),
                  Text('Explore the best places in the world',style: TextStyle(fontWeight: FontWeight.bold,fontFamily: 'VarelaRound',color: Colors.black45,fontSize: 20, decoration: TextDecoration.none))
                ],
              ),
            ),
            Material(
            child :Padding(
              padding:EdgeInsets.only(left: 20.0,right: 20.0,bottom: 50),
              child: TextField(
                textAlign: TextAlign.start,
                style: TextStyle(fontSize: 24),
                decoration: InputDecoration(
                  hintText: "Search your trip",
                  hintStyle: TextStyle(color: Colors.black26,fontFamily: 'VarelaRound'),
                  suffixIcon: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: FloatingActionButton(
                      child: Container(
                        width: 60,
                        height: 60,
                        child: Icon(Icons.search,size: 30,),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [Colors.pink.shade400,Colors.pink.shade500]
                          )
                        ),
                        ),
                      onPressed: (){},
                      ),

                    ),
                  filled:true,
                  fillColor: Colors.black12,
                  border: OutlineInputBorder(
                    borderRadius:BorderRadius.circular(50),
                    borderSide: BorderSide.none
                  )
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("All",style: TextStyle(fontWeight: FontWeight.bold,fontFamily: 'VarelaRound',color: Colors.black45,fontSize: 20, decoration: TextDecoration.none)),
                Text("America",style: TextStyle(fontWeight: FontWeight.bold,fontFamily: 'VarelaRound',color: Colors.black45,fontSize: 20, decoration: TextDecoration.none)),
                Text("Europe",style: TextStyle(fontWeight: FontWeight.bold,fontFamily: 'VarelaRound',color: Colors.black45,fontSize: 20, decoration: TextDecoration.none)),
                Text("Asia",style: TextStyle(fontWeight: FontWeight.bold,fontFamily: 'VarelaRound',color: Colors.black45,fontSize: 20, decoration: TextDecoration.none)),
                Text("Ocenia",style: TextStyle(fontWeight: FontWeight.bold,fontFamily: 'VarelaRound',color: Colors.black45,fontSize: 20, decoration: TextDecoration.none))
              ],
            ),
            ModelCard()
          ],
        ),
      ),

    );
  }
}