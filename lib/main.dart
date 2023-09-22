import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_glow/flutter_glow.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Tutorial',
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: GlowText('Weather app',  textAlign: TextAlign.center, style: GoogleFonts.jetBrainsMono( textStyle:TextStyle(color: (Color(0xfffC0F4FF)), fontSize: 35) ,),),
          ), backgroundColor: Color(0xfff0D0D0D)
        ),
        body: Center(
          child: Container(
            decoration: BoxDecoration(gradient:
            LinearGradient(begin: Alignment.topCenter, end: Alignment.bottomCenter,
                colors: [Color(0xfff0D0D0D), Color(0xfff282828)]),
              image:  DecorationImage(

                image:

                AssetImage('../assets/images/Back2.png'), fit: BoxFit.cover,
              )
            ),
            // child: Column(
            child: Center(
              child: Padding(
                padding: EdgeInsets.all(50.0),
                child: Column(

                  children: [

                    GlowText('Town',  textAlign: TextAlign.center, style: GoogleFonts.jetBrainsMono( textStyle:TextStyle(color: (Color(0xfffF799FF)), fontSize: 35 ))),
                    Padding(padding:EdgeInsets.fromLTRB(0, 30, 0, 0),
                      child: Text('18:17',  textAlign: TextAlign.center, style: GoogleFonts.jetBrainsMono( textStyle:TextStyle(color: (Color(0xfffFFFFFF)), fontSize: 30 ))),

                    ),
                    Padding(padding: EdgeInsets.fromLTRB(0, 40, 0, 0),
                      child: Text('15°C',  textAlign: TextAlign.center, style: GoogleFonts.jetBrainsMono( textStyle:TextStyle(color: (Color(0xfffFFFFFF)), fontSize: 30 ))),
                    ),
                    Padding(padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
                      child: Text('59°F',  textAlign: TextAlign.center, style: GoogleFonts.jetBrainsMono( textStyle:TextStyle(color: (Color(0xfff8E8E8E)), fontSize: 20 ))),

                    ),
                    Image.asset('../assets/images/sun.png', width:80.0 , height: 80.0,fit:BoxFit.fill),
                  ],
                ),
              )

            //   child: Text('Town',   style: GoogleFonts.jetBrainsMono( textStyle:TextStyle(color: (Color(0xfffF799FF)), fontSize: 25 ))),
            //   // child: Text('Town',   style: GoogleFonts.jetBrainsMono( textStyle:TextStyle(color: (Color(0xfffF799FF)), fontSize: 25 ))),
            //
            ),
            //   children: [
            //     // Text('Town',  textAlign: TextAlign.center, style: GoogleFonts.jetBrainsMono( textStyle:TextStyle(color: (Color(0xfffF799FF)), fontSize: 19 ))),
            //     // Text('18:17',  textAlign: TextAlign.center, style: GoogleFonts.jetBrainsMono( textStyle:TextStyle(color: (Color(0xfffFFFFFF)), fontSize: 22 ))),
            //     // Text('15°C',  textAlign: TextAlign.center, style: GoogleFonts.jetBrainsMono( textStyle:TextStyle(color: (Color(0xfffFFFFFF)), fontSize: 22 ))),
            //     // Text('59°F',  textAlign: TextAlign.center, style: GoogleFonts.jetBrainsMono( textStyle:TextStyle(color: (Color(0xfff8E8E8E)), fontSize: 15 ))),
            //     // Image.asset('../assets/images/Back2.png'),
            //     // fit: BoxFit.cover
            //   ],
            // ),

          ),


        ),
      ),
    );
  }
}
