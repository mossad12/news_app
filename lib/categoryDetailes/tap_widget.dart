import 'package:flutter/material.dart';
import 'package:newsapp/News/News_widget.dart';
import 'package:newsapp/categoryDetailes/tab_item.dart';
import '../Model/SorceResponse.dart';

class tapWidget extends StatefulWidget {

List<Source> sourseList;

tapWidget({required this.sourseList});

  @override
  State<tapWidget> createState() => _tapWidgetState();
}

class _tapWidgetState extends State<tapWidget> {
int selectedindex=0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length:widget.sourseList.length,
        child: Column(
          children: [
            TabBar(
              onTap: (index){
               selectedindex=index;
               setState(() {

               });
              },
              isScrollable: true,
                indicatorColor: Colors.transparent,
                tabs:widget.sourseList.map((source) => tabItem(
                    isChecked: selectedindex==widget.sourseList.indexOf(source),
                    source: source)).toList(),
            ),
            Expanded(
                child: newsWidget(sourse: widget.sourseList[selectedindex])
            )

          ],

        )
    );
  }
}
