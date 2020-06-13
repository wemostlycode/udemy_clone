import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:udemy_clone/ui/widget/section_detail_widget.dart';
import 'package:video_player/video_player.dart';

class CourseVideoScreen extends StatefulWidget {
  final String title;
  final String instructorName;

  const CourseVideoScreen({Key key, this.title, this.instructorName})
      : super(key: key);

  @override
  _CourseVideoScreenState createState() => _CourseVideoScreenState();
}

class _CourseVideoScreenState extends State<CourseVideoScreen>
    with SingleTickerProviderStateMixin {
  ChewieController _chewieController;
  VideoPlayerController _controller;
  TabController tabController;
  List<String> _moreList = [];

  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);

    _controller = VideoPlayerController.network(
        'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4');

    _chewieController = ChewieController(
      videoPlayerController: _controller,
      aspectRatio: 3 / 2,
      autoPlay: true,
      looping: true,
    );

    _moreList = [
      'About this Course',
      'Share this Course',
      'Bookmarks',
      'Q&A',
      'Resources',
      'Announcements',
      'Add course to favorites',
      'Archive this course'
    ];

    super.initState();
  }

  @override
  void dispose() {
    // Ensure disposing of the VideoPlayerController to free up resources.
    _controller.dispose();
    _chewieController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
          child: Column(
            children: <Widget>[
              Chewie(
                controller: _chewieController,
              ),
              Padding(
                padding: EdgeInsets.all(size.width / 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      widget.title,
                      style: TextStyle(
                          fontSize: size.width / 18, color: Colors.black),
                    ),
                    SizedBox(
                      height: size.width / 25,
                    ),
                    Text(
                      widget.instructorName,
                      style: TextStyle(
                          fontSize: size.width / 24,
                          color: Colors.black.withOpacity(0.7)),
                    ),
                    SizedBox(
                      height: size.width / 25,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Expanded(
                          child: TabBar(
                              controller: tabController,
                              unselectedLabelColor: Colors.grey,
                              labelColor: Colors.black,
                              indicatorColor: Colors.black,
                              tabs: [
                                Tab(
                                  text: 'Lectures',
                                ),
                                Tab(
                                  text: 'More',
                                )
                              ]),
                          flex: 5,
                        ),
                        SizedBox(
                          width: size.width / 3,
                        ),
                        Expanded(
                            child: Icon(
                          Icons.cloud_download,
                          color: Colors.black,
                        ))
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          preferredSize: Size.fromHeight(size.height / 2.1)),
      body: LimitedBox(
        maxHeight: size.height,
        maxWidth: size.width,
        child: TabBarView(
            controller: tabController,
            children: [lecturesView(size), moreView()]),
      ),
    );
  }

  Widget lecturesView(Size size) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: ListView.separated(
          shrinkWrap: true,
          //  physics: NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            return SectionDetailWidget(
              title: 'Dart 2 - version changes (some videos)',
              duration: '04:58 mins',
              courseNo: '${index + 1}'.toString(),
              trailing: Icon(
                Icons.file_download,
                color: Colors.black.withOpacity(0.7),
              ),
              margin: EdgeInsets.all(0),
              color: Colors.transparent,
            );
          },
          separatorBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 12),
              child: Text(
                'Section ${index + 1} - Introduction and Setup',
                style: TextStyle(
                    color: Colors.black.withOpacity(0.7),
                    fontSize: 14,
                    fontWeight: FontWeight.w700),
              ),
            );
          },
          itemCount: 30),
    );
  }

  Widget moreView() {
    return ListView.builder(
        itemCount: _moreList.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(
              Icons.more_horiz,
              color: Colors.grey,
            ),
            title: Text(
              _moreList[index],
              style: TextStyle(),
            ),
          );
        });
  }
}
