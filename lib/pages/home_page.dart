import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List<String> names = [
    "Sardor",
    "Zikrilloh",
    "Iskandar",
    "Azizbek",
    "Azamat",
    "Sardor",
    "Zikrilloh",
    "Iskandar",
    "Azizbek",
    "Azamat",
    "Sardor",
    "Zikrilloh",
    "Iskandar",
    "Azizbek",
    "Azamat",
  ];

   PageController controller = PageController(viewportFraction: 0.85);
   int currentPageIndex = 0;

   void changeIndex(int index){
     currentPageIndex =  index;
     controller.jumpToPage(currentPageIndex);
     setState(() {});
   }

  void changeBottomNavigation(int index){
    currentPageIndex =  index;
    setState(() {});
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(),

      /// Page Indicator
      // body: Column(
      //   children: [
      //     const SizedBox(height: 50,),
      //     SizedBox(
      //       height: 200,
      //       child: PageView(
      //         // pageSnapping: false,
      //         onPageChanged: changeBottomNavigation,
      //         controller: controller,
      //         scrollDirection: Axis.horizontal,
      //         physics: const BouncingScrollPhysics(),
      //         children: [
      //           Container(
      //             margin: const EdgeInsets.only(right: 15),
      //             decoration: BoxDecoration(
      //               borderRadius: BorderRadius.circular(20),
      //               color: Colors.red,
      //             ),
      //             height: 200,
      //           ),
      //           Container(
      //             decoration: BoxDecoration(
      //               borderRadius: BorderRadius.circular(20),
      //               color: Colors.yellow,
      //             ),
      //             height: 200,
      //           ),
      //         ],
      //       ),
      //     ),
      //     const SizedBox(height: 15),
      //
      //     // SmoothPageIndicator(
      //     //     controller: controller,  // PageController
      //     //     count:  2,
      //     //     effect:  SlideEffect(
      //     //         spacing:  8.0,
      //     //         radius:  4.0,
      //     //         dotWidth:  24.0,
      //     //         dotHeight:  16.0,
      //     //         paintStyle:  PaintingStyle.stroke,
      //     //         strokeWidth:  1.5,
      //     //         dotColor:  Colors.grey,
      //     //         activeDotColor:  Colors.indigo
      //     //     ),    // your preferred effect
      //     //     onDotClicked: (index){
      //     //     }
      //     // )
      //
      //   ],
      // )


      /// BottomNavigationBar
      // bottomNavigationBar: BottomNavigationBar(
      //   // selectedItemColor: ,
      //   // showSelectedLabels: false,
      //   // showUnselectedLabels: false,
      //
      //   iconSize: 30,
      //   currentIndex: currentPageIndex,
      //   onTap: changeIndex,
      //   items: const [
      //     BottomNavigationBarItem(
      //         icon: Icon(Icons.home),
      //      label: 'home',
      //       activeIcon: Icon(Icons.home, color: Colors.red,)
      //
      //     ),
      //     BottomNavigationBarItem(
      //         icon: Icon(Icons.search),
      //         label: 'search'
      //     ),
      //     BottomNavigationBarItem(
      //         icon: Icon(Icons.person),
      //         label: 'person'
      //     ),
      //
      //   ],
      // ),

      ///ListView.separated
      // body: ListView.separated(
      //   itemBuilder: (_, index){
      //     return _namesOfUsers(names[index]);
      //   },
      //   itemCount: names.length,
      //   separatorBuilder: (_, index){
      //     if(index % 2 == 0){
      //       return const Divider(
      //         thickness: 2,
      //         color: Colors.blue,
      //       );
      //     }else{
      //       return const SizedBox.shrink();
      //     }
      //   },
      // ),

      ///ListView.builder
      // body: ListView.builder(
      //   // scrollDirection: Axis.horizontal,
      //   // physics: BouncingScrollPhysics(),
      //   itemCount: names.length,
      //   itemBuilder: (context, index){
      //     return _namesOfUsers(names[index]);
      //   },
      // ),

      ///ListView
      // body: ListView(
      //   children: [
      //     _mainComponent(color: Colors.red),
      //     _mainComponent(color: Colors.red),
      //     _mainComponent(color: Colors.red),
      //     _mainComponent(color: Colors.red),
      //     _mainComponent(color: Colors.red),
      //     _mainComponent(color: Colors.red),
      //   ],
      // ),

      /// SingleChildScrollView
      // body: SingleChildScrollView(
      //   // physics: PageScrollPhysics(),
      //   // physics: FixedExtentScrollPhysics(),
      //   // physics: ClampingScrollPhysics(),
      //   // physics: BouncingScrollPhysics(),
      //   // physics: NeverScrollableScrollPhysics(),
      //   // scrollDirection: Axis.vertical,
      //   // reverse: true,
      //   // padding: EdgeInsets.symmetric(horizontal: 50),
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: [
      //       _mainComponent(color: Colors.red),
      //       _mainComponent(color: Colors.red),
      //       _mainComponent(color: Colors.red),
      //       _mainComponent(color: Colors.red),
      //       _mainComponent(color: Colors.red),
      //     ],
      //   ),
      // ),
    );
  }
}


Widget _namesOfUsers(String name){
  return ListTile(
    title: Text(name),
    subtitle: const Text("Student"),
    leading: const Icon(Icons.person),
  );
}

// Widget _mainComponent({required Color color}){
//   return Container(
//     color: color,
//     height: 150,
//     width: double.infinity,
//     margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
//   );
// }
