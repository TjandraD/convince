import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../model/province.dart';
import 'dart:io' show Platform;
import '../utilities/constants.dart';
import '../widgets/statistics_divider.dart';
import 'package:convince/model/warning_brain.dart';

class DetailScreen extends StatelessWidget {
  DetailScreen({@required this.province});

  final Province province;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: Container(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SafeArea(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      icon: Icon(Platform.isIOS
                          ? Icons.chevron_left
                          : Icons.arrow_back),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                    BookmarkIcon(),
                  ],
                ),
              ),
              Image.asset(
                'images/${province.logoFile}',
                height: 100,
                width: 100,
              ),
              SizedBox(
                height: 32,
              ),
              Text(
                province.name,
                style: TextStyle(
                  fontSize: 36,
                  color: Colors.black,
                  fontStyle: FontStyle.normal,
                  fontFamily: 'Roboto',
                ),
              ),
              SizedBox(
                height: 24,
              ),
              Container(
                height: 100,
                decoration: kStatisticsBoxDecoration,
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            province.positive.toString(),
                            style: TextStyle(
                              fontSize: 24,
                              fontFamily: 'CrimsonText',
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Icon(
                            Icons.add,
                            color: Colors.red,
                          ),
                        ],
                      ),
                    ),
                    statisticsDivider,
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            province.recovered.toString(),
                            style: TextStyle(
                              fontSize: 24,
                              fontFamily: 'CrimsonText',
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Icon(
                            Icons.check,
                            color: Colors.green,
                          ),
                        ],
                      ),
                    ),
                    statisticsDivider,
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            province.death.toString(),
                            style: TextStyle(
                              fontSize: 24,
                              fontFamily: 'CrimsonText',
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Icon(
                            Icons.close,
                            color: Colors.black,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 24,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: WarningBrain(
                        positive: province.positive, death: province.death)
                    .getWarningText(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class BookmarkIcon extends StatefulWidget {
  @override
  _BookmarkIconState createState() => _BookmarkIconState();
}

class _BookmarkIconState extends State<BookmarkIcon> {
  bool isBookmarked = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
          (isBookmarked == false) ? Icons.bookmark_border : Icons.bookmark),
      onPressed: () {
        setState(() {
          isBookmarked = !isBookmarked;
        });
      },
    );
  }
}
