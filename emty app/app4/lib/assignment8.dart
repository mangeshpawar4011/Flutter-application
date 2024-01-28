import 'package:flutter/material.dart';
class Assignment extends StatefulWidget {
const Assignment({super.key});
@override
State<Assignment> createState() => _Assignment5State();
}
class _Assignment5State extends State<Assignment> {
bool _isPost1Liked = false;
bool _isPost2Liked = false;
bool _isPost3Liked = false;
@override
Widget build(BuildContext context) {
return Scaffold(
appBar: AppBar(
backgroundColor: Colors.white,
title: const Text(
"Instagram",
style: TextStyle(
fontStyle: FontStyle.italic,
color: Colors.black,
fontSize: 30,
),
),
actions: const [
Icon(
Icons.favorite_rounded,
)
],
),
body: SingleChildScrollView(
child: Column(
children: [
Column(
mainAxisAlignment: MainAxisAlignment.start,

crossAxisAlignment: CrossAxisAlignment.start,
children: [
Container(
// color: Colors.amber,
child: Image.network(
"https://plus.unsplash.com/premium_photo-1669047670905-fa4331d07e06?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
width: double.infinity,
// height: 200,
),
),
Row(
children: [
IconButton(
onPressed: () {
setState(() {
_isPost1Liked = !_isPost1Liked;
});
},
icon: _isPost1Liked
? const Icon(
Icons.favorite_rounded,
color: Colors.red,
)
: const Icon(
Icons.favorite_outline_rounded,
),

),
IconButton(
onPressed: () {},
icon: Icon(Icons.comment_outlined),
),
IconButton(
onPressed: () {},
icon: const Icon(
Icons.send,
),

),
const Spacer(),
IconButton(
onPressed: () {},
icon: const Icon(
Icons.bookmark_outline,
),
),
],
),
],
),
Column(
mainAxisAlignment: MainAxisAlignment.start,
crossAxisAlignment: CrossAxisAlignment.start,
children: [
Container(
// color: Colors.amber,
child: Image.network(
"https://images.unsplash.com/photo-1597283712405-819a6021326c?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
width: double.infinity,
// height: 200,
),
),
Row(
children: [
IconButton(
onPressed: () {
setState(() {
_isPost2Liked = !_isPost2Liked;
});
},
icon: Icon(
_isPost2Liked
? Icons.favorite_rounded
: Icons.favorite_outline_outlined,

color: _isPost2Liked ? Colors.red :

Colors.black,

),
),
IconButton(
onPressed: () {},
icon: const Icon(
Icons.comment_outlined,
),
),
IconButton(
onPressed: () {},
icon: const Icon(
Icons.send,
),
),
const Spacer(),
IconButton(
onPressed: () {},
icon: const Icon(
Icons.bookmark_outline,
),
),
],
),
],
),
Column(
mainAxisAlignment: MainAxisAlignment.start,
crossAxisAlignment: CrossAxisAlignment.start,
children: [
Container(
// color: Colors.amber,
child: Image.network(
"https://images.unsplash.com/photo-1484950763426-56b5bf172dbb?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
width: double.infinity,

// height: 200,
),
),
Row(
children: [
IconButton(
onPressed: () {},
icon: const Icon(
Icons.favorite_outline_outlined,
),
),
IconButton(
onPressed: () {},
icon: const Icon(
Icons.comment_outlined,
),
),
IconButton(
onPressed: () {},
icon: const Icon(
Icons.send,
),
),
const Spacer(),
IconButton(
onPressed: () {},
icon: const Icon(
Icons.bookmark_outline,
),
),
],
),
],
),
],
),
),
);

}
}