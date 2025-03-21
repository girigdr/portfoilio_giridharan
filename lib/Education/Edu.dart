


import 'package:flutter/material.dart';
import '../BLOC/lightTheme.dart';
class E extends StatefulWidget {
  double h , w ,  t , b ;
  dynamic edu ;
   E({super.key , required this.edu , required this.h , required this .w  , required this.t , required this .b });

  @override
  State<E> createState() => _EState();
}

class _EState extends State<E> {
  @override
  Widget build(BuildContext context) {

    PageController pc = PageController( initialPage:  0 ) ;
    final hi = MediaQuery.of( context ).size.height;
    final wi = MediaQuery.of( context ).size.width;


    return Scaffold(
      backgroundColor: const Color.fromARGB(157, 0, 0, 0),
      body: Stack(
        children: [

              Container(
                height: hi,
                width: wi,
                child: Column (
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    Align(
                      alignment: Alignment( 0.5, -0.7 ),
                      child: Container(
                      height: hi / 15 ,
                      width: wi / 3 ,
                        color: const Color.fromARGB(0, 255, 193, 7) ,
                        child: FittedBox(
                          child: Row(
                            children: [
                              Text(
                                'EDUCATION ',
                                style: TextStyle(
                                  fontFamily: 'f1',
                                  color: const Color.fromARGB(110, 255, 255, 255)
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ) ,

                    
                   Container(
                    height: hi / 1.8 ,
                    width: wi / 1.3,
                  ) ,

                   Align(
                    alignment: Alignment( -0.4, 0.8 ),
                    child: Container(
                      height: hi / 15 ,
                      width: wi / 3 ,
                      color: const Color.fromARGB(0, 255, 193, 7) ,
                      child: FittedBox(
                        child: Row(
                          children: [
                            Text(
                              'SWIPE . . . ',
                              style: TextStyle(
                                fontFamily: 'f1',
                                color: const Color.fromARGB(100, 255, 255, 255)
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),


                  ],
                ) ,
              ) ,

          


          
          
          Container(
            height: hi,
            width: wi,
            child: PageView.builder(
              itemCount: map.length ,
              controller: pc ,
              itemBuilder: (context, index) {
                return Center(
                  child: Container(
                    height: hi / 1.8 ,
                    width: wi / 1.3,
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 1 ,
                        color: const Color.fromARGB(255, 170, 170, 170),
                      ),
                        color: const Color.fromARGB(100, 255, 255, 255)
                    // borderRadius: BorderRadius.all(Radius.circular( 10 ))

                    ),
                    child: Padding(
                      padding: EdgeInsets.all( wi / 10 ),
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox( height: hi / 10 ,),
                            Wrap(
                              children: [
                                Text(
                                  map[ index + 1 ][ 0 ] ,
                                  style: TextStyle(
                                    fontFamily: 'f1',
                                    fontSize: hi / 40  ,
                                    color: const Color.fromARGB(255, 0, 0, 0)
                                  ),
                                )
                              ],
                            ),
                            SizedBox( height: hi / 20 ,),
                            Wrap(
                              children: [
                                Text(
                                  map[ index + 1 ][ 1 ] ,
                                  style: TextStyle(
                                    fontFamily: 'f1',
                                    fontSize: hi / 45  ,
                                    color: const Color.fromARGB(255, 202, 202, 202)
                                  ),
                                )
                              ],
                            ),
                            SizedBox( height: hi / 10 ,),
                            Wrap(
                              children: [
                                Text(
                                  map[ index + 1 ][ 2 ] ,
                                  style: TextStyle(
                                    fontFamily: 'f1',
                                    fontSize: hi / 40  ,
                                    color: const Color.fromARGB(255, 0, 0, 0)
                                  ),
                                )
                              ],
                            ),
                            SizedBox( height: hi / 20 ,),
                            Wrap(
                              children: [
                                Text(
                                  map[ index + 1 ][ 3 ] ,
                                  style: TextStyle(
                                    fontFamily: 'f1',
                                    fontSize: hi / 45  ,
                                    color: const Color.fromARGB(255, 202, 202, 202)
                                  ),
                                )
                              ],
                            ),
                            SizedBox( height: hi / 10 ,),
                            Wrap(
                              children: [
                                Text(
                                  map[ index + 1 ][ 4 ] ,
                                  style: TextStyle(
                                    fontFamily: 'f1',
                                    fontSize: hi / 40  ,
                                    color: const Color.fromARGB(255, 0, 0, 0)
                                  ),
                                )
                              ],
                            ),
                            SizedBox( height: hi / 20 ,),
                            Wrap(
                              children: [
                                Text(
                                  map[ index + 1 ][ 5 ] ,
                                  style: TextStyle(
                                    fontFamily: 'f1',
                                    fontSize: hi / 45  ,
                                    color: const Color.fromARGB(255, 202, 202, 202)
                                  ),
                                )
                              ],
                            ),
                            SizedBox( height: hi / 10 ,),
                            Wrap(
                              children: [
                                Text(
                                  map[ index + 1 ][ 6 ] ,
                                  style: TextStyle(
                                    fontFamily: 'f1',
                                    fontSize: hi / 40  ,
                                    color: const Color.fromARGB(255, 0, 0, 0)
                                  ),
                                )
                              ],
                            ),
                            SizedBox( height: hi / 20 ,),
                            Wrap(
                              children: [
                                Text(
                                  map[ index + 1 ][ 7 ] ,
                                  style: TextStyle(
                                    fontFamily: 'f1',
                                    fontSize: hi / 45  ,
                                    color: const Color.fromARGB(255, 202, 202, 202)
                                  ),
                                ),
                              ],
                            ),
                            SizedBox( height: hi / 10 ,),
                          ],
                        ),
                      ),
                    ),
                  ),
                ) ;
              },
            ),
          ),
      

          //   Align(
          //     alignment: Alignment( 0.5, -0.7 ),
          //     child: Container(
          //     height: hi / 15 ,
          //     width: wi / 3 ,
          //       color: const Color.fromARGB(0, 255, 193, 7) ,
          //       child: FittedBox(
          //         child: Row(
          //           children: [
          //             Text(
          //               'EDUCATION ',
          //               style: TextStyle(
          //                 fontFamily: 'f1',
          //                 color: const Color.fromARGB(110, 255, 255, 255)
          //               ),
          //             ),
          //           ],
          //         ),
          //       ),
          //     ),
          //   ) ,

      
          // Align(
          //   alignment: Alignment( -0.4, 0.8 ),
          //   child: Container(
          //     height: hi / 15 ,
          //     width: wi / 3 ,
          //     color: const Color.fromARGB(0, 255, 193, 7) ,
          //     child: FittedBox(
          //       child: Row(
          //         children: [
          //           Text(
          //             'SWIPE . . . ',
          //             style: TextStyle(
          //               fontFamily: 'f1',
          //               color: const Color.fromARGB(100, 255, 255, 255)
          //             ),
          //           ),
          //         ],
          //       ),
          //     ),
          //   ),
          // ),
          Align(
            alignment: Alignment( 0 , - 0.9 ),
            child: Container(
              height: wi / 13 ,
              width: wi / 13 ,
              decoration: BoxDecoration(
                border: Border.all( 
                  width: 1 ,
                  color: Colors.white 
                ),
                borderRadius: BorderRadius.all(Radius.circular(100 ) ) ,
                color: const Color.fromARGB(0, 255, 0, 0) 
              ),
              child: FittedBox(
                child: IconButton(
                  onPressed: () {
                    widget.edu.add( EdTF( false ) ) ;
                  }, 
                  icon: Icon( Icons.arrow_back )
                  ),
              ),
            ),
          ) , 
      
      
      
        ],
      ),
    );

    
  }
}


Map < dynamic , dynamic > map = {
   1 :      [ 'GRADE' , 'Grade X' , 
              'COMPLETED AT' , 'Christ the king matric hr., sec., school, Kumbakonam.' , 
              'MARK SCORED' , '85.6 Percentage' ,
              'MARK IN MATHEMATICS' , '89 Percentage' ,
            ]  ,
    2 :     [ 'GRADE' ,'Grade XII' , 
              'COMPLETED AT' , 'Karthi vidhyalaya matric hr., sec., school, Kumbakonam.' , 
              'MARK SCORED' , '71.5 Percentage' ,
              'MARK IN MATHEMATICS' , '86 Percentage' ,
            ]  , 
    3 :     [ 'GRADE' , 'Bachelor of Engineering [ BE ]' , 
              'MAJOR' , 'Electronics and Communication Engineering [ ECE ]' ,
              'COMPLETED AT' , 'Government college of engineering, Thanjavur.' , 
              'MARK SCORED' , '7.54 CGPA' , 
            ]  , 
} ;

          


