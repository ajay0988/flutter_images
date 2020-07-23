//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

myapp() {
  var mytext = Text(
    "My Flutter App",
    //textDirection: TextDirection.ltr,
    //textAlign: TextAlign.center,
  );
  mypressEmail() {
    print("some body clicked on email Icon...");
  }

  mypressAlarm() {
    print("something clicked on alarm Icon...");
  }

  var MyalarmIcon = Icon(
    Icons.access_alarm,
    color: Colors.grey.shade400,
  );
  var MyalarmButton = IconButton(
    icon: MyalarmIcon,
    onPressed: mypressAlarm,
  );
  var MyEmailIcon = Icon(
    Icons.email,
    color: Colors.grey.shade900,
  );
  var MyEmailButton = IconButton(
    icon: MyEmailIcon,
    onPressed: mypressEmail,
  );
  var myappicon = Icon(
    Icons.apps,
  );
  mypressapp() {
    print("some body clicked on app icon ...");
  }

  var myappbutton = IconButton(
    icon: myappicon,
    onPressed: mypressapp,
  );
  //var url1 =
  //  'https://raw.githubusercontent.com/ajay0988/flutter_images/master/logo.png';
  var url =
      'https://raw.githubusercontent.com/ajay0988/flutter_images/master/myimg.jpg';

  var myimage = Image.network(
    url,
    width: double.infinity,
    height: double.infinity,
    //alignment: Center,
  );
  /*var mylogoimage = Image.network(
    url1,
    width: double.infinity,
    height: double.infinity,
  );*/
  mypressch() {
    print("anybody press search button ...");
  }

  var myserarchicon = Icon(
    Icons.youtube_searched_for,
    color: Colors.grey.shade900,
  );
  var mysearchbutton = IconButton(
    icon: myserarchicon,
    onPressed: mypressch,
  );
  var myeditIcon = Icon(
    Icons.edit,
  );
  var myeditbutton = IconButton(
    icon: myeditIcon,
    onPressed: null,
  );
  var myappvar = AppBar(
    title: mytext,
    leading: myappbutton,
    actions: <Widget>[
      MyEmailButton,
      MyalarmButton,
      mysearchbutton,
    ],
    backgroundColor: Colors.amber,
  );
  var myhome = Scaffold(
    appBar: myappvar,
    body: myimage,
    //extendBody: myeditbutton,
    backgroundColor: Colors.grey.shade400,
  );

  var design = MaterialApp(
    home: myhome,
    debugShowCheckedModeBanner: false,
  );
  return design;
}
