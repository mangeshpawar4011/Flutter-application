import 'package:flutter/material.dart';


class Assignment extends StatefulWidget {
  const Assignment({super.key});

  @override
  State<Assignment> createState() => _AssignmentState();
}

class _AssignmentState extends State<Assignment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text(
          "Netflix",
          style: TextStyle(
            fontStyle: FontStyle.normal,
            color: Colors.black,
            fontSize: 30,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            Text(" MOVIES"),
            SizedBox(
              height: 20,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                //  mainAxisAlignment: MainAxisAlignment.start,
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 20,
                    width: 30,
                  ),
                  Image.network(
                    "https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC/et00311762-lmdexnggxy-portrait.jpg",
                    //  width: double.infinity,
                    height: 200,
                  ),
                  SizedBox(
                    height: 20,
                    width: 30,
                  ),
                  Image.network(
                    "https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC/et00311762-lmdexnggxy-portrait.jpg",
                    //  width: double.infinity,
                    height: 200,
                  ),
                  SizedBox(
                    height: 20,
                    width: 30,
                  ),
                  Image.network(
                    "https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC/et00311762-lmdexnggxy-portrait.jpg",
                    //  width: double.infinity,
                    height: 200,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(" WEB SERIES"),
            SizedBox(
              height: 20,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                //  mainAxisAlignment: MainAxisAlignment.start,
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 20,
                    width: 30,
                  ),
                  Image.network(
                    "https://assetscdn1.paytm.com/images/catalog/product/H/HO/HOMSHERLOCK-HOLHK-P63024784A1CC1B/1563111214645_0..jpg",
                    //  width: double.infinity,
                    height: 200,
                  ),
                  SizedBox(
                    height: 20,
                    width: 30,
                  ),
                  Image.network(
                    "https://dnm.nflximg.net/api/v6/2DuQlx0fM4wd1nzqm5BFBi6ILa8/AAAAQeIeKt7LlqIJPKrT4aQijclj7K43xRSU3dQXNESNdNbnnJbT6LLWVRT9srUUbHbOo-iOH-8v3o16pUDMQ6tCgNGlkvfwvDOprROIZpQ2rgHtop9rHvbYlvzavMmUSGBCXjynJ80dn4nqZzZmzIUJMQpS.jpg?r=943",
                    //  width: double.infinity,
                    height: 200,
                  ),
                  SizedBox(
                    height: 20,
                    width: 30,
                  ),
                  Image.network(
                    "https://www.tallengestore.com/cdn/shop/products/PeakyBlinders-NetflixTVShow-ArtPoster_125897c4-6348-41e8-b195-d203700ebcca.jpg?v=1619864555",
                    //  width: double.infinity,
                    height: 200,
                  ),
                  SizedBox(
                    height: 20,
                    width: 30,
                  ),
                  Image.network(
                    "https://www.tallengestore.com/cdn/shop/products/PeakyBlinders-NetflixTVShow-ArtPoster_125897c4-6348-41e8-b195-d203700ebcca.jpg?v=1619864555",
                    //  width: double.infinity,
                    height: 200,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(" UPCOMING MOVIES"),
            SizedBox(
              height: 20,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                //  mainAxisAlignment: MainAxisAlignment.start,
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 20,
                    width: 30,
                  ),
                  Image.network(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR0kR0gMemRl9ylPTzmmuQQVb10vo8n7kXL7BeHkeo_4lmJS56C8-WKIy_GYK12wnEmPlc",
                    //  width: double.infinity,
                    height: 200,
                  ),
                  SizedBox(
                    height: 20,
                    width: 30,
                  ),
                  Image.network(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRZ5Cq8kozpWIaq5Aohw4rjKkh_eE7nUkDV5zcHClQaYw&s",
                    //  width: double.infinity,
                    height: 200,
                  ),
                  SizedBox(
                    height: 20,
                    width: 30,
                  ),
                  Image.network(
                    "https://dbdzm869oupei.cloudfront.net/img/posters/preview/91008.png",
                    //  width: double.infinity,
                    height: 200,
                  ),
                  SizedBox(
                    height: 20,
                    width: 30,
                  ),
                  Image.network(
                    "https://www.tallengestore.com/cdn/shop/products/PeakyBlinders-NetflixTVShow-ArtPoster_125897c4-6348-41e8-b195-d203700ebcca.jpg?v=1619864555",
                    //  width: double.infinity,
                    height: 200,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}