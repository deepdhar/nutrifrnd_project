import 'package:flutter/material.dart';

class Day1 extends StatefulWidget {
  Day1() : super();
  final String title = "7 Day Diet Plan To Survive Quarintine";
  @override
  _Day1State createState() => _Day1State();
}

class _Day1State extends State<Day1> {
  List<String> days;
  @override
  void initState() {
    super.initState();
    days = List();
    addDays();
  }

  addDays() {
    days.add("Lukewarm water with freshlime and ½ tsp Honey");
    days.add("Ginger with tulsi tea");
    days.add("1 Tbsp Chawanprash");
    days.add("Milk with stuffed egg omelette");
    days.add(
        "A decotion (Kadha) made from Tulsi, Cinnamon, Black pepper, Dry Ginger and Raisin. (Prescribed by Ministry of AYUSH)");
    days.add("Fruit Chat (250g)");
    days.add("2 chapattis");
    days.add("1 cup of ginger tea");
    days.add("Handful of almonds/nuts");
    days.add("1 chapati, with 1 bowl of dal/paneer");
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
        title: Text("DAY 1"),
      ),
      body: Container(
        child: list(),
      ),
    );
  }
}
