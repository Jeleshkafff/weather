import 'package:flutter/material.dart';
import 'package:untitled2/models/weather.dart';
import 'package:untitled2/services/weather_service.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_glow/flutter_glow.dart';
import 'dart:convert';
import "package:http/http.dart" as http;
import  'package:intl/intl.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}


class _HomeScreenState extends State<HomeScreen> {
  WeatherService _weatherService = WeatherService();

  String _cityName = '';
  late Weather _weather;

  @override
  void initState() {
    super.initState();
    _getWeatherByCity('Moscow'); // Начальный город по умолчанию
  }

  void _getWeatherByCity(String ) async {
    Weather weather = await _weatherService.getWeatherByCityName('Moscow');
    setState(() {
      _cityName = 'Moscow';
      _weather = weather;
    });
  }



  @override
  Widget build(BuildContext context) {
    String tdata = DateFormat("hh:mm a").format(DateTime.now());
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

                      GlowText(_cityName,  textAlign: TextAlign.center, style: GoogleFonts.jetBrainsMono( textStyle:TextStyle(color: (Color(0xfffF799FF)), fontSize: 35 ))),
                      Padding(padding:EdgeInsets.fromLTRB(0, 30, 0, 0),
                        child: Text(DateFormat("hh:mm a").format(DateTime.now()).toString(),  textAlign: TextAlign.center, style: GoogleFonts.jetBrainsMono( textStyle:TextStyle(color: (Color(0xfffFFFFFF)), fontSize: 30 ))),

                      ),
                      Padding(padding: EdgeInsets.fromLTRB(0, 40, 0, 0),
                        child: Text(  _weather.temperature.toStringAsFixed(2) + '°C',textAlign: TextAlign.center, style: GoogleFonts.jetBrainsMono( textStyle:TextStyle(color: (Color(0xfffFFFFFF)), fontSize: 30 ))),
                      ),
                      Padding(padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
                        child: Text(_weather.temperature2.toStringAsFixed(2) + '°F',  textAlign: TextAlign.center, style: GoogleFonts.jetBrainsMono( textStyle:TextStyle(color: (Color(0xfff8E8E8E)), fontSize: 20 ))),

                      ),
                      Image.asset('../assets/images/wind.png', width:80.0 , height: 40.0,fit:BoxFit.fill),
                    ],
                  ),
                )

              //   child: Text('Town',   style: GoogleFonts.jetBrainsMono( textStyle:TextStyle(color: (Color(0xfffF799FF)), fontSize: 25 ))),
              //   // child: Text('Town',   style: GoogleFonts.jetBrainsMono( textStyle:TextStyle(color: (Color(0xfffF799FF)), fontSize: 25 ))),
              //
            ),


          ),


        ),
      ),
    );
  }
}