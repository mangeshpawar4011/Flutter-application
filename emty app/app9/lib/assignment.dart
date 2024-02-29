import 'package:flutter/material.dart';
import 'assignment1.dart';

class Assignment extends StatefulWidget {
  const Assignment({super.key});
  @override
  State<Assignment> createState() => _AssignmentState();
}

class _AssignmentState extends State<Assignment> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          "food Item",
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.w900,
          ),
        ),
        backgroundColor: Colors.cyan,
        centerTitle: true,
        actions: [
          Icon(Icons.soup_kitchen),
          IconButton(
            icon: Icon(Icons.star),
            onPressed: () {
              setState(() {
                Assignment1();
              });
            },
          ),
        ],
      ),
      body: ListView(
        children: [
          const SizedBox(
            height: 10,
          ),
          Text(
            "No of Item:$count",
            style: const TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w500,
            ),
            textDirection: TextDirection.rtl,
          ),
          const SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Container(
                    height: 180,
                    width: 150,
                    color: Colors.white,
                    child: Image.network(
                        "https://img.freepik.com/free-photo/vertical-shot-traditional-indian-paneer-butter-masala-cheese-cottage-curry-black-surface_181624-32001.jpg?w=740&t=st=1707274371~exp=1707274971~hmac=21111ba2e18a99007cd45830ae8eab6182a85730c6497b4bab78bceb0d05971f"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        count++;
                      });
                    },
                    child: const Text("Add"),
                  )
                ],
              ),
              Column(
                children: [
                  Container(
                    height: 180,
                    width: 150,
                    color: Colors.white,
                    child: Image.network(
                        "https://img.freepik.com/premium-photo/indian-hindu-veg-thali-food-platter-selective-focus_466689-35929.jpg?w=360"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        count++;
                      });
                    },
                    child: const Text("Add"),
                  )
                ],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Container(
                    height: 180,
                    width: 150,
                    color: Colors.white,
                    child: Image.network(
                        "https://img.freepik.com/premium-photo/indian-lunch-dinner-main-course-food-group-includes-paneer-butter-masala-dal-makhani-palak-paneer-roti-rice-etc-selective-focus_466689-6844.jpg?w=360"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        count++;
                      });
                    },
                    child: const Text("Add"),
                  )
                ],
              ),
              Column(
                children: [
                  Container(
                    height: 180,
                    width: 150,
                    color: Colors.white,
                    child: Image.network(
                        "https://img.freepik.com/free-photo/vertical-shot-chickpea-curry-chana-masala-with-lime-bowl-white-surf_181624-31989.jpg?w=740&t=st=1707274639~exp=1707275239~hmac=8e62447ce28cd625e226191e936c93ecf1388b5856df97ab4139408e5651a88a"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        count++;
                      });
                    },
                    child: const Text("Add"),
                  )
                ],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Container(
                    height: 180,
                    width: 150,
                    color: Colors.white,
                    child: Image.network(
                        "https://img.freepik.com/premium-photo/paneer-tikka-is-indian-dish-made-from-chunks-cottage-cheese-marinated-spices-grilled-tandoor_466689-76797.jpg?w=360"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        count++;
                      });
                    },
                    child: const Text("Add"),
                  )
                ],
              ),
              Column(
                children: [
                  Container(
                    height: 180,
                    width: 150,
                    color: Colors.white,
                    child: Image.network(
                        "https://img.freepik.com/premium-photo/biryani-is-mixed-rice-dish_891336-899.jpg?w=360"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        count++;
                      });
                    },
                    child: const Text("Add"),
                  )
                ],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Container(
                    height: 180,
                    width: 150,
                    color: Colors.white,
                    child: Image.network(
                        "https://img.freepik.com/free-photo/high-angle-indian-food-assortment_23-2148747704.jpg?w=360&t=st=1707275856~exp=1707276456~hmac=e1ee53ce2b3e031690ea402632ff72cf962135b1417ee68e57e9f76139f09c23"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        count++;
                      });
                    },
                    child: const Text("Add"),
                  )
                ],
              ),
              Column(
                children: [
                  Container(
                    height: 180,
                    width: 150,
                    color: Colors.white,
                    child: Image.network(
                        "https://img.freepik.com/free-photo/noodles-with-beef-vegetables-black-table_141793-1730.jpg?w=360&t=st=1707275953~exp=1707276553~hmac=4203f61ba2959fdf4b0d813134d600604011470d1cee4bc80642bea551f1415c"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        count++;
                      });
                    },
                    child: const Text("Add"),
                  )
                ],
              ),
            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(
            () {
              count = 0;
            },
          );
        },
        backgroundColor: Colors.cyan,
        child: const Text("Reset"),
      ),
    );
  }
}
