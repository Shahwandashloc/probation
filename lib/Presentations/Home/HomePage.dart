import 'package:flutter/material.dart';
import 'package:flutter_application_1/Routes/App_routes.dart';
import 'package:flutter_application_1/Widgets/CustomAppBar.dart';
import 'package:get/get.dart';

import 'Controller/HomeController.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final HomeController controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), color: Colors.amber[50]),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.all(18.0),
                  child: Row(
                    children: [
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
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: const Text(
                    "Ready to get those expenses organized? i'll\nget u setup! Just let me knowhow i can\nhelp",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                const SizedBox(height: 30),
                const Padding(
                  padding: EdgeInsets.only(right: 240),
                  child: Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Text("For individuals"),
                  ),
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
                Padding(
                  padding: const EdgeInsets.all(12.0),
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
                Divider(
                  color: Colors.white,
                  height: 3,
                  thickness: 8,
                ),
                Obx(() => AnimatedContainer(
                      duration: Duration(milliseconds: 800),
                      height: controller.isExpanded1.value ? 450 : 90,
                      color: Colors.amber[70],
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 10),
                            Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Row(
                                children: [
                                  CircleAvatar(
                                    backgroundColor: Colors.blue.shade300,
                                    child: const Icon(
                                      Icons.dinner_dining_sharp,
                                      size: 30,
                                    ),
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
                                  Padding(
                                    padding: const EdgeInsets.only(left: 190),
                                    child: IconButton(
                                      iconSize: 36.0,
                                      icon: Icon(
                                        controller.isExpanded1.value
                                            ? Icons.arrow_drop_up_outlined
                                            : Icons.arrow_drop_down_outlined,
                                      ),
                                      onPressed: controller.toggleExpand1,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            if (controller.isExpanded1.value) ...[
                              SizedBox(height: 20),
                              Padding(
                                padding: const EdgeInsets.only(right: 50),
                                child: Text(
                                  "Invite your friends to join Expensify",
                                  style: TextStyle(fontSize: 15),
                                ),
                              ),
                              SizedBox(height: 30),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Icon(Icons.chat_bubble),
                                  Icon(Icons.add),
                                  Icon(Icons.mail_outline)
                                ],
                              ),
                              SizedBox(height: 90),
                              Center(
                                child: ElevatedButton(
                                  style: ButtonStyle(
                                    backgroundColor:
                                        WidgetStateProperty.all(Colors.green),
                                  ),
                                  onPressed: () {},
                                  child: SizedBox(
                                    height: 50,
                                    width: 200,
                                    child: Center(
                                      child: Text(
                                        "Share invite link",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 30),
                              Divider(color: Colors.black),
                              SizedBox(height: 40),
                              Center(child: Text("No thanks"))
                            ],
                          ],
                        ),
                      ),
                    )),
                SizedBox(
                  height: 15,
                ),
                Divider(
                  color: Colors.white,
                  thickness: 12,
                ),
                Obx(
                  () => AnimatedContainer(
                    duration: Duration(milliseconds: 800),
                    height: controller.isExpanded2.value ? 530 : 100,
                    color: Colors.amber[30],
                    child: InkWell(
                      onTap: controller.toggleExpand2,
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  CircleAvatar(
                                    backgroundColor: Colors.blue.shade300,
                                    child:
                                        const Icon(Icons.dinner_dining_sharp),
                                  ),
                                  SizedBox(width: 10),
                                  Expanded(
                                    child: Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "Concierge",
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w700,
                                            ),
                                          ),
                                          Text(
                                            "giyig53398@resmail24.com, doesn't quite...",
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  IconButton(
                                    iconSize: 36.0,
                                    icon: Icon(
                                      controller.isExpanded2.value
                                          ? Icons.arrow_drop_up_outlined
                                          : Icons.arrow_drop_down_outlined,
                                    ),
                                    onPressed: controller.toggleExpand2,
                                  ),
                                ],
                              ),
                              if (controller.isExpanded2.value) ...[
                                SizedBox(height: 20),
                                Padding(
                                  padding: const EdgeInsets.only(left: 30),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        "giyig53398@resmail24.com doesn't quite",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14,
                                        ),
                                      ),
                                      Text(
                                        " roll of the tongue...is there something else\nyou go by?",
                                      ),
                                      SizedBox(height: 20),
                                      CircleAvatar(
                                        radius: 60,
                                        backgroundColor:
                                            Colors.lightBlue.shade100,
                                        child: Icon(
                                          Icons.person,
                                          size: 115,
                                          color: Colors.purple.shade400,
                                        ),
                                      ),
                                      SizedBox(height: 20),
                                      Text(
                                        "Upload photo",
                                        style: TextStyle(
                                            color: Colors.blue, fontSize: 16),
                                      ),
                                      SizedBox(height: 20),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 230),
                                        child: Text(
                                          "First name",
                                          style: TextStyle(color: Colors.blue),
                                        ),
                                      ),
                                      TextFormField(
                                        decoration: InputDecoration(
                                          border: UnderlineInputBorder(),
                                        ),
                                      ),
                                      SizedBox(height: 20),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 230),
                                        child: Text(
                                          "Last name",
                                          style: TextStyle(color: Colors.blue),
                                        ),
                                      ),
                                      TextFormField(
                                        decoration: InputDecoration(
                                          border: UnderlineInputBorder(),
                                          contentPadding: EdgeInsets.symmetric(
                                            vertical: 8.0,
                                            horizontal: .0,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Divider(
                  color: Colors.white,
                  thickness: 12,
                ),
                Obx(
                  () => AnimatedContainer(
                    duration: Duration(milliseconds: 800),
                    height: controller.isExpanded3.value ? 700 : 120,
                    color: Colors.amber[70],
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          InkWell(
                            onTap: controller.toggleExpand3,
                            child: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Row(
                                children: [
                                  CircleAvatar(
                                    backgroundColor: Colors.blue.shade300,
                                    child:
                                        const Icon(Icons.dinner_dining_sharp),
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "Concierge",
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w700,
                                            ),
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Expanded(
                                                child: Text(
                                                  "Forward your emailed receipts to",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                ),
                                              ),
                                              Text(
                                                "receipts",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                ),
                                                overflow: TextOverflow.ellipsis,
                                              ),
                                              IconButton(
                                                iconSize: 36.0,
                                                icon: Icon(
                                                  controller.isExpanded3.value
                                                      ? Icons
                                                          .arrow_drop_up_outlined
                                                      : Icons
                                                          .arrow_drop_down_outlined,
                                                ),
                                                onPressed:
                                                    controller.toggleExpand3,
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          if (controller.isExpanded3.value) ...[
                            SizedBox(height: 20),
                            SingleChildScrollView(
                              clipBehavior: Clip.none,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(18.0),
                                    child: Container(
                                      height: 200,
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        image: DecorationImage(
                                          image: AssetImage("assets/7.jpg"),
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 20),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 84),
                                    child: Text(
                                      "Forward your emailed receipts to",
                                      style: TextStyle(fontSize: 17),
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "receipts@expensify.com",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15,
                                        ),
                                      ),
                                      Text(
                                        "SmartScan will",
                                        style: TextStyle(fontSize: 17),
                                      )
                                    ],
                                  ),
                                  Text(
                                    "automatically transcribe the merchant name,\ndate and amount from your receipt add\nthe expense to your account.",
                                    style: TextStyle(fontSize: 17),
                                  ),
                                  SizedBox(height: 30),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 60),
                                    child: ElevatedButton(
                                      style: ButtonStyle(
                                        backgroundColor:
                                            WidgetStateProperty.all(
                                                Colors.green),
                                      ),
                                      onPressed: () {},
                                      child: SizedBox(
                                        height: 50,
                                        width: 200,
                                        child: Center(
                                          child: Text(
                                            "Add to contacts",
                                            style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 20),
                                  Divider(color: Colors.black),
                                  SizedBox(height: 20),
                                  Padding(
                                    padding:
                                        EdgeInsets.only(left: 170, bottom: 20),
                                    child: Text(
                                      "Hide",
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ],
                      ),
                    ),
                  ),
                ),
                Divider(
                  color: Colors.white,
                  thickness: 12,
                ),
                Obx(
                  () => AnimatedContainer(
                    duration: Duration(milliseconds: 800),
                    height: controller.isExpanded4.value ? 570 : 100,
                    color: Colors.amber[50],
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          InkWell(
                            onTap: controller.toggleExpand4,
                            child: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Row(
                                children: [
                                  CircleAvatar(
                                    backgroundColor: Colors.blue,
                                    child: Icon(
                                      Icons.dinner_dining_sharp,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text("Concierge"),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 190),
                                    child: IconButton(
                                      iconSize: 36.0,
                                      icon: Icon(
                                        controller.isExpanded4.value
                                            ? Icons.arrow_drop_up_outlined
                                            : Icons.arrow_drop_down_outlined,
                                      ),
                                      onPressed: controller.toggleExpand4,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          if (controller.isExpanded4.value) ...[
                            SizedBox(height: 10),
                            Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Text(
                                "Should I update you when receipts need attention or colleagues have questions?",
                                style: TextStyle(fontSize: 16),
                              ),
                            ),
                            SizedBox(height: 40),
                            Padding(
                              padding: const EdgeInsets.only(left: 130),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.chat_bubble_outline_sharp,
                                    size: 50,
                                  ),
                                  Image.asset(
                                    "assets/8.png",
                                    height: 90,
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 70),
                            Center(
                              child: ElevatedButton(
                                style: ButtonStyle(
                                  backgroundColor:
                                      WidgetStateProperty.all(Colors.green),
                                ),
                                onPressed: () {},
                                child: SizedBox(
                                  height: 60,
                                  width: 190,
                                  child: Center(
                                    child: Text(
                                      "Yes, alert me when needed",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 30),
                            Divider(color: Colors.grey),
                            SizedBox(height: 30),
                            Center(
                              child: Text(
                                "No, I will frequently check for changes",
                                style: TextStyle(color: Colors.grey),
                              ),
                            ),
                            SizedBox(height: 20),
                          ],
                        ],
                      ),
                    ),
                  ),
                ),
                Divider(
                  color: Colors.white,
                  thickness: 12,
                ),
                Obx(
                  () => AnimatedContainer(
                    duration: Duration(milliseconds: 800),
                    height: controller.isExpanded5.value ? 470 : 100,
                    color: Colors.amber[50],
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: controller.toggleExpand5,
                            child: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Row(
                                children: [
                                  CircleAvatar(
                                    backgroundColor: Colors.blue.shade300,
                                    child:
                                        const Icon(Icons.dinner_dining_sharp),
                                  ),
                                  SizedBox(width: 10),
                                  Expanded(
                                    child: Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "Concierge",
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w700,
                                            ),
                                          ),
                                          Text(
                                            "Do you want your location tracked?",
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  IconButton(
                                    iconSize: 36.0,
                                    icon: Icon(
                                      controller.isExpanded5.value
                                          ? Icons.arrow_drop_up_outlined
                                          : Icons.arrow_drop_down_outlined,
                                    ),
                                    onPressed: controller.toggleExpand5,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          if (controller.isExpanded5.value) ...[
                            SizedBox(height: 10),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Do you want to use your current location to track mileage and improve currency recognition for your receipts?",
                              ),
                            ),
                            Image.asset("assets/9.png"),
                            SizedBox(height: 30),
                            ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor:
                                    WidgetStateProperty.all(Colors.green),
                              ),
                              onPressed: () {},
                              child: SizedBox(
                                height: 60,
                                width: 200,
                                child: Center(
                                  child: Text(
                                    "Enable Location",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ],
                      ),
                    ),
                  ),
                ),
                Divider(
                  color: Colors.white,
                  thickness: 12,
                ),
                Obx(
                  () => AnimatedContainer(
                    duration: Duration(milliseconds: 800),
                    height: controller.isExpanded6.value ? 420 : 90,
                    color: const Color.fromRGBO(255, 248, 225, 1),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: controller.toggleExpand6,
                            child: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Row(
                                children: [
                                  CircleAvatar(
                                    backgroundColor: Colors.blue.shade300,
                                    child:
                                        const Icon(Icons.dinner_dining_sharp),
                                  ),
                                  SizedBox(width: 10),
                                  Expanded(
                                    child: Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "Concierge",
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w700,
                                            ),
                                          ),
                                          Text(
                                            "Get unlimited SmartScans!",
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 170),
                                    child: IconButton(
                                      iconSize: 36.0,
                                      icon: Icon(
                                        controller.isExpanded6.value
                                            ? Icons.arrow_drop_up_outlined
                                            : Icons.arrow_drop_down_outlined,
                                      ),
                                      onPressed: controller
                                          .toggleExpand6, // Corrected this line
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          if (controller.isExpanded6.value) ...[
                            SizedBox(
                              height: 20,
                            ),
                            Image.asset(
                              "assets/10.png",
                              height: 150,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Text(
                                  "Do you want to say goodbye to manual data\nentry for good? Upgrade to receive unlimited\nSmartScansfor £3.99/month."),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text("Privacy policy"),
                                Text("Terms and Conditions")
                              ],
                            )
                          ]
                        ],
                      ),
                    ),
                  ),
                ),
                Divider(
                  color: Colors.white,
                  thickness: 12,
                ),
                Container(
                  height: 320,
                  color: Colors.amber[50],
                  child: Padding(
                    padding: const EdgeInsets.only(left: 80),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/11.png",
                          height: 200,
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        Text(
                          "Woohoo! You're at inbox Zero.",
                          style: TextStyle(fontSize: 17),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text("Go ahead and celebrate"),
                      ],
                    ),
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
        onPressed: () {
          Get.toNamed(AppRoutes.Camera);
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
