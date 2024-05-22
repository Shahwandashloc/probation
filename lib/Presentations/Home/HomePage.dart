import 'package:flutter/material.dart';
import 'package:flutter_application_1/Widgets/CustomAppBar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[50],
      appBar: CustomAppBar(
        title: 'Inbox',
        notificationIcon: Icons.menu,
        messageIcon: Icons.chat_bubble,
        plusIcon: Icons.add,
        backgroundColor: Colors.grey.shade800,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 800,
          width: 390,
          color: Colors.white,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(height: 30),
                Row(
                  children: [
                    const SizedBox(width: 50),
                    CircleAvatar(
                      backgroundColor: Colors.blue.shade300,
                      child: const Icon(Icons.dinner_dining_sharp),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "Concierge",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                const Text(
                  "Ready to get those expenses organized? i'll\nget u setup! Just let me knowhow i can\nhelp",
                  style: TextStyle(color: Colors.black),
                ),
                const SizedBox(height: 30),
                const Padding(
                  padding: EdgeInsets.only(right: 240),
                  child: Text("For individuals"),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 170,
                      child: Divider(
                        color: Colors.lightBlue.shade100,
                        thickness: 5,
                      ),
                    ),
                    Container(
                      width: 170,
                      child: Divider(
                        color: Colors.lightBlue.shade100,
                        thickness: 5,
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 200,
                  child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10.0,
                      mainAxisSpacing: 10.0,
                    ),
                    itemCount: 2,
                    itemBuilder: (context, index) {
                      if (index == 0) {
                        return const GridTile(
                          child: Card(
                            child: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Image(
                                    image: AssetImage("assets/3.png"),
                                    width: 70,
                                  ),
                                  Text(
                                    'Track',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    'Track receipts for tax\nand personal expenses',
                                    style: TextStyle(fontSize: 13),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      } else {
                        return const GridTile(
                          child: Card(
                            child: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Image(
                                    image: AssetImage("assets/4.png"),
                                    width: 70,
                                  ),
                                  Text(
                                    'Submit',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    'Submit expenses to\nyour manager or\n   accountant',
                                    style: TextStyle(fontSize: 13),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      }
                    },
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 250),
                  child: Text("For Groups"),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 170,
                      child: Divider(
                        color: Colors.blue.shade700,
                        thickness: 5,
                      ),
                    ),
                    Container(
                      width: 170,
                      child: Divider(
                        color: Colors.blue.shade700,
                        thickness: 5,
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 220,
                  child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10.0,
                      mainAxisSpacing: 10.0,
                    ),
                    itemCount: 2,
                    itemBuilder: (context, index) {
                      if (index == 0) {
                        return const GridTile(
                          child: Card(
                            child: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Image(
                                    image: AssetImage("assets/5.png"),
                                    width: 70,
                                  ),
                                  Text(
                                    'Collect',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    'Collect receipts from\nyour team or clients',
                                    style: TextStyle(fontSize: 13),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      } else {
                        return const GridTile(
                          child: Card(
                            child: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Image(
                                    image: AssetImage("assets/6.png"),
                                    width: 70,
                                  ),
                                  Text(
                                    'Control',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    'Control company status\nand manage expenses',
                                    style: TextStyle(fontSize: 13),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      }
                    },
                  ),
                ),
                Container(
                  height: 250,
                  color: Colors.amber[70],
                  child: Column(
                    children: [
                      Row(
                        children: [
                          const SizedBox(width: 50),
                          CircleAvatar(
                            backgroundColor: Colors.blue.shade300,
                            child: const Icon(Icons.dinner_dining_sharp),
                          ),
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              "Concierge",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const Text("Invite your friends to join Expensify"),
                      const SizedBox(
                        height: 30,
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(Icons.chat_bubble),
                          Icon(Icons.add),
                          Icon(Icons.mail_outline)
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor:
                              WidgetStateProperty.all(Colors.green),
                        ),
                        onPressed: () {},
                        child: const SizedBox(
                          width: 200,
                          child: Center(
                            child: Text(
                              "Share invite link",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Divider(
                        color: Colors.black,
                      ),
                      const Text("No thanks")
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  height: 70,
                  color: Colors.amber[30],
                  child: Row(
                    children: [
                      const SizedBox(width: 50),
                      CircleAvatar(
                        backgroundColor: Colors.blue.shade300,
                        child: const Icon(Icons.dinner_dining_sharp),
                      ),
                      const SizedBox(width: 10),
                      const Expanded(
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Concierge",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              Text(
                                "giyig53398@resmail24.com,doesn't quit...",
                                overflow: TextOverflow
                                    .ellipsis, // Ensure text does not overflow
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  height: 70,
                  color: Colors.amber[70],
                  child: Row(
                    children: [
                      const SizedBox(width: 50),
                      CircleAvatar(
                        backgroundColor: Colors.blue.shade300,
                        child: const Icon(Icons.dinner_dining_sharp),
                      ),
                      const SizedBox(width: 10),
                      const Expanded(
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Concierge",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      "Forward your emailed receipts to",
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                  Text(
                                    "receipts",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                    overflow: TextOverflow.ellipsis,
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 70,
                  color: Colors.amber[70],
                  child: Row(
                    children: [
                      const SizedBox(width: 50),
                      CircleAvatar(
                        backgroundColor: Colors.blue.shade300,
                        child: const Icon(Icons.dinner_dining_sharp),
                      ),
                      const SizedBox(width: 10),
                      const Expanded(
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Concierge",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      "giyig53398@resmail24.com..does'nt quite\nroll of the tongue...is there something else\nyou go by?",
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                  Text(
                                    "receipts",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                    overflow: TextOverflow.ellipsis,
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        child: const Icon(
          Icons.camera_alt,
          color: Colors.white,
        ),
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
