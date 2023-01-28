
import 'package:flutter/material.dart';

class ShowBookedRides extends StatefulWidget {
  const ShowBookedRides({Key? key}) : super(key: key);

  @override
  State<ShowBookedRides> createState() => _ShowBookedRidesState();
}

class _ShowBookedRidesState extends State<ShowBookedRides> {

  String searchQuery = "";

  List<List<String>> listEvent = [
    [
      "https://www.table-art.co.uk/wp-content/uploads/atlantis-underwater-event-theme-2.jpg?v=1645079362",
      "Under The Sea"
    ],
    [
      "https://www.table-art.co.uk/wp-content/uploads/asian-parasol-prop-1.jpg?v=1645077958",
      "Ibiza"
    ],
    [
      "https://www.table-art.co.uk/wp-content/uploads/grey-inflatable-elephant.jpg?v=1645077608",
      "Dream Circus"
    ],
    [
      "https://www.table-art.co.uk/wp-content/uploads/art-deco-gatsby-event-theme-marrakech-1.jpg?v=1645079369",
      "Roaring 20"
    ],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                      },
                      child: const SizedBox(
                        height: 50,
                        width: 50,
                      ),
                    ),
                    const SizedBox(
                      width: 50,
                    ),
                    const Text(
                      "Booked Rides",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Color.fromRGBO(118, 125, 152, 1),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                themeContainer(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget themeContainer() {
    return InkWell(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.all(8),
        child: Container(
          padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
          // height: height * 0.13,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color:
                    const Color.fromARGB(255, 233, 233, 233).withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: const Offset(0, 3), // changes position of shadow
              ),
            ],
            borderRadius: BorderRadius.circular(20),
            // color: const Color.fromRGBO(11, 86, 222, 5),
            color: Colors.white,
          ),
          child: Column(
            children: [
              const CircleAvatar(
                radius: 60,
                backgroundImage: NetworkImage("https://images.livemint.com/img/2022/11/03/1600x900/buses_1667495627739_1667495652633_1667495652633.jpg"),
              ),
              // SizedBox(
              //   width: 0.0468 * width,
              // ),
              const Text("To: LazmiPat"),
              const Text("                      Category: Car                      ", style: TextStyle(fontSize: 15)),
              const Text("                      At: 30 Jan                      ", style: TextStyle(fontSize: 15, color: Color.fromARGB(255, 174, 59, 9))),
              const Text("                      Price: 7900                      ", style: TextStyle(fontSize: 15, color: Colors.green)),
              const Text("                      Your Seat No is: 3C                      ", style: TextStyle(fontSize: 15, color: Colors.green)),
              ElevatedButton(onPressed: (){}, child: const Text("View in Detail"))


            ],
          ),
        ),
      ),
    );
  }
}