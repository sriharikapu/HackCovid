import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher.dart';

class SymptomsItems extends StatefulWidget {
  @override
  _SymptomsItemsState createState() => _SymptomsItemsState();
}

class _SymptomsItemsState extends State<SymptomsItems> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        getSymptomsItems(context, 'Fever'),
        SizedBox(height: 16.0,),
        getSymptomsItems(context, 'Cough'),
        SizedBox(height: 16.0,),
        getSymptomsItems(context, 'Tiredness'),
        SizedBox(height: 16.0,),
        getSymptomsItems(context, 'Difficulty in Breathing'),
        SizedBox(height: 16.0,),
        
      ],
    );
  }
}


class PreventionItems extends StatefulWidget {
  @override
  _PreventionItemsState createState() => _PreventionItemsState();
}

class _PreventionItemsState extends State<PreventionItems> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        getSymptomsItems(context, 'Wash hands often'),
        SizedBox(height: 16.0,),
        getSymptomsItems(context, 'Cough into elbow'),
        SizedBox(height: 16.0,),
        getSymptomsItems(context, "Don't touch your face"),
        SizedBox(height: 16.0,),
        getSymptomsItems(context, 'Keep safe distance'),
        SizedBox(height: 16.0,),
        getSymptomsItems(context, 'Stay home if you can'),
        SizedBox(height: 16.0,),
        
      ],
    );
  }
}

Widget getSymptomsItems(BuildContext context, String text) {
  return Container(
    decoration: BoxDecoration(
        color: Colors.black87,
        borderRadius: BorderRadius.all(Radius.circular(5.0))),
    child: ListTile(
  
  leading:   new Image.asset('assets/images/$text.png',height: 40,) ,     //new SvgPicture.asset('assets/images/$text.svg',
  //     height: 40.0,
  // width: 30.0,
  // allowDrawingOutsideViewBox: true,
  // color:Colors.red), 
      title: Text(
        text,
        style:
            Theme.of(context).textTheme.subhead.copyWith(color: Colors.white),
      ),
      trailing: Icon(
        Icons.warning,
        color: Colors.redAccent,
      ),
    ),
  );
}

void launchUrl() async{
  const url = 'https://www.who.int/news-room/q-a-detail/q-a-coronaviruses';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
