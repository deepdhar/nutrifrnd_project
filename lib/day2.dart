import 'package:flutter/material.dart';

class Day2 extends StatefulWidget {
  Day2() : super();
  final String title = "7 Day Diet Plan To Survive Quarintine";
  @override
  _Day2State createState() => _Day2State();
}

class _Day2State extends State<Day2> {
  List<String> days;
  @override
  void initState() {
    super.initState();
    days = List();
    addDays();
  }

  addDays() {
    days.add("Lukewarm water with freshlime and ½ tsp Honey");
    days.add("Ginger and tulsi tea");
    days.add("1 Tbsp Chawanprash");
    days.add("Paneer paratha with Curd");
    days.add("Fruit Chat (250g)");
    days.add(
        "Rice (2-3 tsp) with 1 bowl of dal, 1 bowl of veggies & 1 bowl of curd or raita");
    days.add("Boiled Egg");
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
        title: Text("DAY 2"),
      ),
      body: Container(
        child: list(),
      ),
    );
  }
}
