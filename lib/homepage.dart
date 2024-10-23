import 'package:flutter/material.dart';
import 'package:hotelbookingui/componenets/travelcard.dart';

class TravelApp extends StatefulWidget {
  const TravelApp({super.key});

  @override
  State<TravelApp> createState() => _TravelAppState();
}

class _TravelAppState extends State<TravelApp> {
  //here i 'm going to add a list of image uri that i collected from the internet
  //you can use the image that you want, just copy and paste theiruris here inside the list
  List<String>uri = ['https://www.cvent.com/sites/default/files/image/2021-10/hotel%20room%20with%20beachfront%20view.jpg',
  'https://static01.nyt.com/images/2019/03/24/travel/24trending-shophotels1/24trending-shophotels1-superJumbo.jpg',
  'https://images.pexels.com/photos/164595/pexels-photo-164595.jpeg',
  'https://media.istockphoto.com/id/1390233984/photo/modern-luxury-bedroom.jpg?s=612x612&w=0&k=20&c=po91poqYoQTbHUpO1LD1HcxCFZVpRG-loAMWZT7YRe4='

  ];
  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff6f7ff),
      appBar: AppBar(
        elevation:0.0 ,
        backgroundColor: const Color(0xfff6f7ff),
        title: Row(children: [
          IconButton(onPressed: (){}, icon:const Icon(Icons .menu,color:Colors.black,
          ),
          )
        ],),
      ),
      body:  Padding(
        padding:  const EdgeInsets.symmetric(vertical: 8.0,horizontal: 24.0),
        child: ListView(

          children: [
            //let's start by adding the text
            const Text(
              "Welcome Musafir",
            style: TextStyle(color: Colors.black,
            fontSize: 26.0,
            fontWeight: FontWeight.w600,
            ),
            ),
             const Text(

              "Pick your destinotion",
            style:TextStyle(color: Colors.black,
            fontSize: 20.0,
            fontWeight: FontWeight.w300,
            
            
            ),
            ),
             const SizedBox(
              height: 20.0,
             ), 
              //Now let's add some elevation to our text field
              //to do this we need to wrap it in a Material widget
             Material(
              elevation: 10.0,
              borderRadius: BorderRadius.circular(10.0),
              shadowColor: const Color(0x55434343),
               child: const TextField(
                textAlign: TextAlign.start,
                textAlignVertical: TextAlignVertical.center,
                decoration: InputDecoration(
                  hintText: "Search For Hotel. Flight...",
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.black54,
               
                  ),
                  border: InputBorder.none,
                  ),
               ),
             ) ,
            const SizedBox(height: 30.0),
            //Now let's add a Tabulation bar
            DefaultTabController(length: 3, child: Expanded(child: Column(children: [const TabBar(
              indicatorColor: Color(0xFFFE8C68),
              unselectedLabelColor: Color(0xff555555),
              labelColor: Color(0xfffe8c68),
              labelPadding: EdgeInsets.symmetric(horizontal: 8.0),
              tabs: [
                Tab(
                  text: "Trending",
                ),
                Tab(
                  text: "Promotions",
                ),
                Tab(
                  text: "Favorites",
                ),
              ],
            ),
            const SizedBox(height: 20.0,
            ),
            SizedBox(
              height: 300.0,
              child: TabBarView(
                children: [
                  //Now let's create our first tab page
                  ListView(scrollDirection:Axis.horizontal,
                  children: [travelcard(uri[1], 'Hotel', 'Bengaluru', 3),
                  travelcard(uri[2], 'Hotel ho', 'Bengal', 4),
                  travelcard(uri[0], 'Hotel xo', 'chennai', 4)
                  ],
                  ), ListView(scrollDirection:Axis.horizontal,
                  children: [travelcard(uri[1], 'Hotel', 'Bengaluru', 3),
                  travelcard(uri[2], 'Rjadhani', 'Bengal', 4),
                  travelcard(uri[0], 'Hotel xo', 'chennai', 4)
                  ],
                  ),
                  ListView(scrollDirection:Axis.horizontal,
                  children: [travelcard(uri[1], 'Hotel', 'Bengaluru', 3),
                  travelcard(uri[2], 'Rjadhani', 'Bengal', 4),
                  travelcard(uri[0], 'Hotel xo', 'chennai', 4)
                  ],
                  )
                ]),
            ),
               
                
                  
          ],),
                 
                  ),
      ),],),
            ),
            
            
    );
  }
}