import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ListViewCheck(),
    );
  }
}

class ListViewCheck extends StatefulWidget {
  const ListViewCheck({super.key});

  @override
  State<ListViewCheck> createState() => _ListViewCheckState();
}

class _ListViewCheckState extends State<ListViewCheck> {
  List<List> imageList = [
    [
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQdc69gvtF-6XIo856p-XGwIevwsGV6Luuw8Q&usqp=CAU",
      "https://img1.hscicdn.com/image/upload/f_auto,t_ds_w_1200,q_50/lsci/db/PICTURES/CMS/373900/373992.jpg",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSklU41c6U6TzxSj6QYp7XQXqB17_bW4C9VfQ&usqp=CAU"
    ],
    [
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQdc69gvtF-6XIo856p-XGwIevwsGV6Luuw8Q&usqp=CAU",
      "https://img1.hscicdn.com/image/upload/f_auto,t_ds_w_1200,q_50/lsci/db/PICTURES/CMS/373900/373992.jpg",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSklU41c6U6TzxSj6QYp7XQXqB17_bW4C9VfQ&usqp=CAU"
    ],
    [
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQdc69gvtF-6XIo856p-XGwIevwsGV6Luuw8Q&usqp=CAU",
      "https://img1.hscicdn.com/image/upload/f_auto,t_ds_w_1200,q_50/lsci/db/PICTURES/CMS/373900/373992.jpg",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSklU41c6U6TzxSj6QYp7XQXqB17_bW4C9VfQ&usqp=CAU"
    ],
  ];

  List matchType = ["T20", "ODI", "TestMatch"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "ListView Builder",
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
      ),
      body: ListView.separated(
          shrinkWrap: true,
          itemBuilder: (context, index1) {
            //return List View Builder
            return Column(children: [
              SizedBox(
                  child: Text(matchType[index1],
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 25))),
              ListView.builder(
                  itemCount: imageList[index1].length,
                  shrinkWrap: true,
                  itemBuilder: (context, index2) {
                    //return container
                    return Container(
                      height: 200,
                      width: 200,
                      margin: const EdgeInsets.all(8.0),
                      child: Image.network(imageList[index1][index2]),
                    );
                  }),
            ]);
          },
          separatorBuilder: (context, index1) {
            return const Text(
              "<------------------------------------------------->",
              textAlign: TextAlign.center,
            );
          },
          itemCount: imageList.length),
    );
  }
}
