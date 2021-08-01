import 'package:education/pages/admission_page.dart';
import 'package:education/pages/explore_page.dart';
import 'package:education/pages/faq_page.dart';
import 'package:education/pages/home_page.dart';
import 'package:flutter/material.dart';

class BottomNavBarWidget extends StatefulWidget {
  const BottomNavBarWidget({ Key? key }) : super(key: key);

  @override
  _BottomNavBarWidgetState createState() => _BottomNavBarWidgetState();
}

class _BottomNavBarWidgetState extends State<BottomNavBarWidget> {
  int _index=2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(      

      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Colors.grey,
              blurRadius: 10,
            ),
          ],
          borderRadius: BorderRadius.circular(20)
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: BottomNavigationBar(
            backgroundColor: Colors.white,
            currentIndex: _index,
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.explore_outlined),
                label: 'Explore',   
                       
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.school_outlined),
                label: 'Admissions',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.question_answer_outlined),
                label: 'FAQs',
              ),
              
            ],
            onTap: (int index){
              setState(() {
                _index=index;
              });
            },
          ),
        ),
      ),
      body: selectedPage(),
      
    );
  }

  Widget selectedPage() {
    switch (_index) {
      case 0:
        return HomePage();
      case 1:
        return ExplorePage();
      case 2:
        return AdmissionPage();
      case 3:
        return FAQPage();

      default:
        return Container();
    }
  }
}