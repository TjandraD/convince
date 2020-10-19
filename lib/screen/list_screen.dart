import 'package:flutter/material.dart';
import 'package:convince/model/province.dart';
import '../utilities/constants.dart';
import 'detail_screen.dart';

class ListScreen extends StatelessWidget {
  ListScreen({@required this.provinceList});

  final List<Province> provinceList;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Top 10 Province List'),
        backgroundColor: Colors.grey.shade700,
      ),
      backgroundColor: Colors.grey,
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: ListView(
          children: provinceList.map(
            (province) {
              return GestureDetector(
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 8),
                  decoration: kItemsBoxDecoration,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Image.asset(
                            'images/${province.logoFile}',
                            width: 64,
                            height: 64,
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                province.name,
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.grey.shade900,
                                  fontFamily: 'Roboto',
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'Positive : ${province.positive.toString()}',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                  fontFamily: 'CrimsonText',
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return DetailScreen(
                      province: province,
                    );
                  }));
                },
              );
            },
          ).toList(),
        ),
      ),
    );
  }
}
