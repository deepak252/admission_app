import 'package:education/models/blog.dart';
import 'package:education/widgets/circular_border_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

const kHeadingTextStyle = TextStyle(
  color: Color(0xff6c40ff),
  fontWeight: FontWeight.bold,
  fontSize: 12,
);

class AdmissionPage extends StatefulWidget {
  AdmissionPage({Key? key}) : super(key: key);

  @override
  _AdmissionPageState createState() => _AdmissionPageState();
}

final List<String> carouselItems = [
  'assets/images/carousels/carousel1.jpg',
  'assets/images/carousels/carousel2.jpg',
  'assets/images/carousels/carousel3.jpg',
  'assets/images/carousels/carousel4.jpg',
];

final List<Blog> blogItems=[
  Blog(
    blogImage: 'assets/images/blogs/blog1.jpg',
    blogDescription: "To guide you to some of the best resources out there, we’ve collected 52+ great college admissions blogs, along with some helpful test prep and college counseling sites.",
  ),
  Blog(
    blogImage: 'assets/images/blogs/blog2.jpg',
    blogDescription: "To guide you to some of the best resources out there, we’ve collected 52+ great college admissions blogs, along with some helpful test prep and college counseling sites.",
  ),
  Blog(
    blogImage: 'assets/images/blogs/blog3.jpg',
    blogDescription: "To guide you to some of the best resources out there, we’ve collected 52+ great college admissions blogs, along with some helpful test prep and college counseling sites.",
  ),
  Blog(
    blogImage: 'assets/images/blogs/blog4.jpg',
    blogDescription: "To guide you to some of the best resources out there, we’ve collected 52+ great college admissions blogs, along with some helpful test prep and college counseling sites.",
  ),
  Blog(
    blogImage: 'assets/images/blogs/blog5.jpg',
    blogDescription: "To guide you to some of the best resources out there, we’ve collected 52+ great college admissions blogs, along with some helpful test prep and college counseling sites.",
  ),
];

class _AdmissionPageState extends State<AdmissionPage> {
  int _currentCrouselIndex = 0;

  List<Widget> carouselIndicators = [];
  List<Widget> buildCarouselIndicators() {
    carouselIndicators.clear();
    for (int i = 0; i < carouselItems.length; i++) {
      carouselIndicators.add(
        Container(
          width: _currentCrouselIndex == i ? 16.0 : 8.0,
          height: 3.0,
          margin: EdgeInsets.symmetric(horizontal: 2.0),
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(8),
            color: _currentCrouselIndex == i ? Colors.purple : Colors.grey,
          ),
        ),
      );
    }
    return carouselIndicators;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Padding(
          padding: const EdgeInsets.only(bottom: 24.0),
          child: Text(
            'My Admissions',
            style: TextStyle(
              fontSize: 18,
            ),
          ),
        ),
        centerTitle: true,
        leading: Padding(
          padding: const EdgeInsets.only(bottom: 30.0),
          child: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              size: 16,
            ),
            onPressed: () {},
            splashRadius: 30,
          ),
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
        elevation: 0,
      ),
      body: ListView(
        children: [
          CarouselSlider(
            options: CarouselOptions(
                autoPlay: false,
                aspectRatio: 7 / 3,
                viewportFraction: 1,
                onPageChanged: (index, reason) {
                  setState(() {
                    _currentCrouselIndex = index;
                  });
                }),
            items: carouselItems
                .map(
                  (item) => CircularBorderCardWidget(
                      child: buildImageContainer(
                        img: item,
                        
                      ),
                      padding:
                          EdgeInsets.symmetric(vertical: 12, horizontal: 10),
                      elevation: 6),
                )
                .toList(),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: buildCarouselIndicators(),
          ),
          CircularBorderCardWidget(
            padding: EdgeInsets.symmetric(vertical: 12, horizontal: 10),
            elevation: 3,
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Text(
                      'My Admissions',
                      style: TextStyle(
                          color: Color(0xff6c40ff), fontWeight: FontWeight.bold),
                    ),
                  ),
                  Text(
                    "We've created a college application timeline just for international students. Know what to do the year before you apply to college, while applying, and the summer before college begins.",
                    style: TextStyle(
                      fontSize: 10,
                    ),
                    maxLines: 4,
                  )
                ],
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            height: 100,
            width: 400,
            child: Row(children: [
              Expanded(
                child: Column(
                  children: [
                    Expanded(
                      child: CircularBorderCardWidget(
                        child: Center(
                          child: Text(
                            'College Predictor',
                            style: kHeadingTextStyle,
                          ),
                        ),
                      elevation: 2,
                      radius: 8,
                    )),
                    Expanded(
                      child: CircularBorderCardWidget(
                        child: Center(
                          child: Text(
                            'My Coaching',
                            style: kHeadingTextStyle,
                          ),
                        ),
                      elevation: 2,
                      radius: 8,
                    )),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    Expanded(
                        child: CircularBorderCardWidget(
                      child: Center(
                        child: Text(
                          'Degree Selector',
                          style: kHeadingTextStyle,
                        ),
                      ),
                      elevation: 2,
                      radius: 8,
                    )),
                    Expanded(
                      child: CircularBorderCardWidget(
                        child: Center(
                          child: Text(
                            'Overseas Admission',
                            style: kHeadingTextStyle,
                          ),
                        ),
                      elevation: 2,
                      radius: 8,
                    )),
                  ],
                ),
              ),
            ]),
            // child : circularBorderCardWidget(child: Text('College Predictor')),
          ),
          Padding(
            padding: const EdgeInsets.only(left:12.0,right: 12.0, top: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Blogs for you',
                  style: kHeadingTextStyle,
                ),
                InkWell(
                  child: Text(
                    'View more',
                    style: kHeadingTextStyle,
                  ),
                  onTap: (){

                  },
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 10, right: 10,bottom: 12),
            height: 120,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: blogItems.length,
              itemBuilder: (context,index){
                return buildBlogWidget(
                  blogImage: blogItems[index].blogImage,
                  blogDescription: blogItems[index].blogDescription,
                );
              },
            ),
          )
        ],
      ),
    );
  }

  Container buildBlogWidget({required String blogImage, required String blogDescription}) {
    return Container(
                width: 120,
                child: CircularBorderCardWidget(
                  child: Column(
                    children: [
                      CircularBorderCardWidget(
                        padding: EdgeInsets.all(2),
                        child: buildImageContainer(
                          img: blogImage,
                          radius: 6,
                          height: 60,
                        ),                    
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 5,right: 5),
                        child: Text(
                          '$blogDescription',
                          style: TextStyle(
                            fontSize: 9.0,                            
                          ),
                          maxLines: 2,
                        ),
                      )
                    ],
                  )
                ),
              );
  }

  Widget buildImageContainer({required String img, double? radius,double? height}) {
    return ClipRRect(
      child: Image.asset(
        img,
        fit: BoxFit.cover,
        height: height,
      ),
      borderRadius: BorderRadius.circular(radius?? 14),
    );
  }

  
}
