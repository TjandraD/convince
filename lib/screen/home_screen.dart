import 'package:convince/widgets/statistics_divider.dart';
import 'package:flutter/material.dart';
import '../model/province_data.dart';
import '../widgets/rounded_container.dart';
import '../utilities/constants.dart';
import 'list_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      'images/home_bg.png',
                      width: 128,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Welcome',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 32,
                            fontFamily: 'Roboto',
                          ),
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        Text(
                          'Always wear a mask',
                          style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'Roboto',
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: roundedRectangle(
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'COVID-19 Indonesia',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Roboto',
                      ),
                    ),
                    kItemMarginVertical,
                    kItemMarginVertical,
                    Text(
                      'National',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 16,
                        fontStyle: FontStyle.italic,
                        fontFamily: 'OpenSans',
                      ),
                    ),
                    kItemMarginVertical,
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
                                  '200.035',
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
                                  '142.958',
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
                                  '8.230',
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
                    kItemMarginVertical,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Province',
                          style: TextStyle(
                            fontSize: 16,
                            fontStyle: FontStyle.italic,
                            fontFamily: 'OpenSans',
                          ),
                        ),
                        IconButton(
                          icon: Icon(
                            Icons.arrow_forward,
                            color: Colors.blue.shade300,
                          ),
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return ListScreen(
                                provinceList: provinceList,
                              );
                            }));
                          },
                        )
                      ],
                    ),
                    Container(
                      height: 128,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: provinceList.map(
                          (province) {
                            return Container(
                              margin: EdgeInsets.symmetric(horizontal: 8),
                              decoration: kItemsBoxDecoration,
                              child: Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Column(
                                  children: [
                                    Image.asset(
                                      'images/${province.logoFile}',
                                      width: 80,
                                      height: 80,
                                    ),
                                    Text(province.name),
                                  ],
                                ),
                              ),
                            );
                          },
                        ).toList(),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}