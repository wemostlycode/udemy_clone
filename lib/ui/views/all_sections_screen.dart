import 'package:flutter/material.dart';
import 'package:udemy_clone/ui/widget/expanded_widget.dart';
import 'package:udemy_clone/ui/widget/section_detail_widget.dart';

class AllSectionsScreen extends StatefulWidget {
  final List<String> courseSectionsList;

  const AllSectionsScreen({Key key, this.courseSectionsList}) : super(key: key);

  @override
  _AllSectionsScreenState createState() => _AllSectionsScreenState();
}

class _AllSectionsScreenState extends State<AllSectionsScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Column(
            children: <Widget>[
              Card(
                elevation: 4,
                margin: EdgeInsets.only(left: 12, right: 12),
                child: Container(
                  padding: EdgeInsets.only(top: 16, bottom: 16),
                  width: size.width,
                  margin: EdgeInsets.only(left: 12, right: 12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Curriculum',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontSize: size.width / 23),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        'Lectures (54) Total (8 hours)',
                        style: TextStyle(fontSize: size.width / 26),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 12,
              ),
              ...List.generate(widget.courseSectionsList.length, (index) {
                return Padding(
                  padding: const EdgeInsets.only(top: 12.0),
                  child: ExpandedWidget(
                    title: widget.courseSectionsList[index],
                    titleStyle: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: size.width / 23),
                    backgroundColor: Colors.white,
                    children: <Widget>[
                      ListView.builder(
                          shrinkWrap: true,
                          itemCount: 5,
                          itemBuilder: (context, index) {
                            return SectionDetailWidget(
                              title:
                                  'Introduction to Advanced Adobe Illustrator CC',
                              courseNo: (index + 1).toString(),
                              duration: '02:35 mins',
                              trailing: Text(
                                'PREVIEW',
                                style: TextStyle(
                                    color: Colors.blueAccent,
                                    fontSize: size.width / 32),
                              ),
                            );
                          })
                    ],
                  ),
                );
              }),
              SizedBox(
                height: size.height / 40,
              )
            ],
          ),
        ),
      ),
    );
  }
}
