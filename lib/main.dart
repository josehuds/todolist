   import 'dart:html';



import 'package:flutter/material.dart';
import 'package:frutaas/input.dart';
import 'homePage.dart';



void main(){
runApp(mayapp());
}
class mayapp extends StatefulWidget {
const mayapp({super.key});
@override
State<mayapp> createState() => _mayappState();
}
class _mayappState extends State<mayapp> {
@override
Widget build(BuildContext context) {
return MaterialApp(
title: 'flutter demo',
theme: ThemeData(
colorScheme: ColorScheme.fromSeed(seedColor: Colors.purple),
),
routes:{
'/':(context) => const homepage(),
'/imput':(context) => const imput(),
},



);
}
}


