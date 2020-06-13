import 'package:flutter/material.dart';

class AccountProfilePreferencesWidget extends StatefulWidget {
  @override
  _AccountProfilePreferencesWidgetState createState() =>
      _AccountProfilePreferencesWidgetState();
}

class _AccountProfilePreferencesWidgetState
    extends State<AccountProfilePreferencesWidget> {
  bool value = false;
  int selectedVal = 0;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      color: Colors.white,
      margin: EdgeInsets.only(
        left: size.width / 40,
        right: size.width / 40,
      ),
      child: Padding(
        padding: EdgeInsets.only(
          top: size.height / 40,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(
                  left: size.width / 26, right: size.width / 26),
              child: Text(
                'Preferences',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: size.width / 21),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: size.height / 42,
                left: size.width / 26,
                right: size.width / 26,
              ),
              child: Text(
                'Lecture playback',
                style: TextStyle(color: Colors.grey, fontSize: size.width / 30),
              ),
            ),
            InkWell(
              onTap: () {},
              child: Container(
                width: size.width,
                // color: Colors.yellow,
                child: SwitchListTile(
                  title: Text(
                    'Continue lecture in background',
                    style: TextStyle(fontSize: size.width / 27),
                  ),
                  activeColor: Colors.redAccent,
                  onChanged: (val) {
                    setState(() {
                      value = val;
                    });
                  },
                  value: value,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: size.height / 42,
                left: size.width / 26,
                right: size.width / 26,
              ),
              child: Text(
                'Video download options',
                style: TextStyle(color: Colors.grey, fontSize: size.width / 30),
              ),
            ),
            InkWell(
              onTap: () {},
              child: Container(
                width: size.width,
                // color: Colors.yellow,
                child: SwitchListTile(
                  title: Text(
                    'Download via Wi-Fi only',
                    style: TextStyle(fontSize: size.width / 27),
                  ),
                  activeColor: Colors.redAccent,
                  onChanged: (val) {
                    setState(() {
                      value = val;
                    });
                  },
                  value: value,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: size.height / 85,
              ),
              child: InkWell(
                onTap: () {},
                child: Container(
                  width: size.width,
                  // color: Colors.yellow,
                  child: SwitchListTile(
                    title: Text(
                      'Download to SD card',
                      style: TextStyle(fontSize: size.width / 27),
                    ),
                    activeColor: Colors.redAccent,
                    onChanged: (val) {
                      setState(() {
                        value = val;
                      });
                    },
                    value: value,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: size.height / 42,
                left: size.width / 26,
                right: size.width / 26,
              ),
              child: InkWell(
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                            title: Text(
                              'Video download quality',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            content: Container(
                              width: size.width,
                              height: size.height / 3.5,
                              child: Column(
                                children: <Widget>[
                                  RadioListTile(
                                    title: Text('360p'),
                                    groupValue: selectedVal,
                                    value: 0,
                                    onChanged: (val) {
                                      setState(() {
                                        selectedVal = val;
                                      });
                                      Navigator.pop(context);
                                    },
                                  ),
                                  RadioListTile(
                                    title: Text('480p'),
                                    groupValue: selectedVal,
                                    value: 1,
                                    onChanged: (val) {
                                      setState(() {
                                        selectedVal = val;
                                      });
                                      Navigator.pop(context);
                                    },
                                  ),
                                  RadioListTile(
                                    title: Text('720p'),
                                    groupValue: selectedVal,
                                    value: 2,
                                    onChanged: (val) {
                                      setState(() {
                                        selectedVal = val;
                                      });
                                      Navigator.pop(context);
                                    },
                                  ),
                                  RadioListTile(
                                    title: Text('1080p'),
                                    groupValue: selectedVal,
                                    value: 3,
                                    onChanged: (val) {
                                      setState(() {
                                        selectedVal = val;
                                      });
                                      Navigator.pop(context);
                                    },
                                  ),
                                ],
                              ),
                            ));
                      });
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Video download quality',
                      style: TextStyle(fontSize: size.width / 27),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      getSelectedVideoQuality(selectedVal),
                      style: TextStyle(
                          fontSize: size.width / 27, color: Colors.grey),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: size.height / 42,
                  left: size.width / 26,
                  right: size.width / 26,
                  bottom: size.height / 42),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Notification settings',
                    style: TextStyle(
                        fontSize: size.width / 27, color: Colors.grey),
                  ),
                  SizedBox(
                    height: size.height / 80,
                  ),
                  Text(
                    'Edit notification preferences',
                    style: TextStyle(fontSize: size.width / 27),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  String getSelectedVideoQuality(int selectedVal) {
    String selectedVideoQuality = '';
    if (selectedVal == 0) {
      selectedVideoQuality = '360p';
    } else if (selectedVal == 1) {
      selectedVideoQuality = '480p';
    } else if (selectedVal == 2) {
      selectedVideoQuality = '720p';
    } else {
      selectedVideoQuality = '1080p';
    }

    return selectedVideoQuality;
  }
}
