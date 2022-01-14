import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class HomeScreen extends StatelessWidget{
  static const String routeName = '/';
  static Route route(){
    return MaterialPageRoute(
        builder: (_) => HomeScreen(),
      settings: RouteSettings(name: routeName),
    );
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text('Home'),),
      body: Center(
        child: SvgPicture.asset('assets/burger.svg', height: 100,)
      ),
    );
  }
}