

import 'package:flutter/material.dart';
import 'package:widgets_exercise/loading.dart';
import 'package:widgets_exercise/player_screen.dart';

class HomePage extends StatefulWidget{
  const HomePage({super.key});
  
  @override
  State<HomePage> createState(){
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage>{
  bool _isLoading = true;
  @override
  void initState(){
    Future.delayed(const Duration(seconds: 3),(){
      setState(() {
        _isLoading = false;
      });
    });
  }

  @override
  Widget build(context){
    return Scaffold(
     body: _isLoading ? const Loading() : PlayerScreen(),
    );
  }

}