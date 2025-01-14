import 'package:flutter/material.dart';
import '../widgets/custom_title_appbar.dart';
import '../widgets/link_banner_box.dart';
import 'widgets/custom_card_list.dart';
import 'widgets/custom_carousel.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int _newNovelList = 0;
  int _liveHotList = 1;

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: customTitleAppbar(context, 'NEXT PAGE'),
      body: Container(
        width: double.infinity,
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              const CustomCarousel(),
              SizedBox(
                height: _size.height * 0.04,
              ),
              CustomCardList(sortOfList: _newNovelList,),
              SizedBox(
                height: _size.height * 0.04,
              ),
              LinkBannerBox(),
              SizedBox(
                height: _size.height * 0.04,
              ),
              CustomCardList(sortOfList: _liveHotList,),
            ],
          ),
        ),
      ),
    );
  }
}