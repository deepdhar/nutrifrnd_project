import 'package:flutter/material.dart';

class Day3 extends StatefulWidget {
  Day3() : super();
  final String title = "7 Day Diet Plan To Survive Quarintine";
  @override
  _Day3State createState() => _Day3State();
}

class _Day3State extends State<Day3> {
  List<String> days;
  @override
  void initState() {
    super.initState();
    days = List();
    addDays();
  }

  addDays() {
    days.add("Lukewarm water with freshlime and ½ tsp of Honey");
    days.add("Ginger and tulsi tea");
    days.add("1 Tbsp Chawanprash");
    days.add("Porridge with seeds, nuts and fruits");
    days.add(
        "A decotion (Kadha) made from Tulsi, Cinnamon, Black pepper, Dry Ginger and Raisin. (Prescribed by Ministry of AYUSH)");
    days.add("2 chapattis");
    days.add("Paneer Tikka");
    days.add("1 chapati, with 1 bowl of dal/paneer");
    days.add("1 bowl of fresh fruits");
    days.add("1 cup Milk with ½ tsp organic turmeric");
  }

  Widget list() {
    return ListView.builder(
      padding: EdgeInsets.all(20),
      itemCount: days.length,
      itemBuilder: (BuildContext context, int index) {
        return row(context, index);
      },
    );
  }

  Widget row(context, index) {
    return Dismissible(
      key: Key(days[index]),
      onDismissed: (direction) {},
      child: Card(
        shadowColor: Color(0xFF44BEA3),
        child: ListTile(
          title: Text(days[index]),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF009688),
        title: Text("DAY 3"),
      ),
      body: Container(
        child: list(),
      ),
    );
  }
}
