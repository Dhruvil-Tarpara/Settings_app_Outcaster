import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const Myapp());
}

class Myapp extends StatefulWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  bool Platform = false;
  bool button1 = false;
  bool button2 = false;

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarIconBrightness:
            (Platform) ? Brightness.dark : Brightness.light,
        statusBarColor: (Platform) ? Colors.white : Colors.black,
      ),
    );
    return (Platform)
        ? MaterialApp(
            debugShowCheckedModeBanner: false,
            home: SafeArea(
              child: Scaffold(
                body: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: Column(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                "Settings",
                                style: TextStyle(
                                  fontSize: 36,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black,
                                ),
                              ),
                              Switch.adaptive(
                                value: Platform,
                                onChanged: (val) {
                                  setState(() {
                                    Platform = val;
                                  });
                                },
                                activeTrackColor: Colors.green,
                                inactiveTrackColor: Colors.grey,
                                inactiveThumbColor: Colors.black,
                                activeColor: Colors.white,
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 10,
                          child: SingleChildScrollView(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                const SizedBox(
                                  height: 4,
                                ),
                                CupertinoSearchTextField(
                                  backgroundColor: Colors.grey.shade200,
                                  itemColor: Colors.grey.shade400,
                                  itemSize: 22,
                                  borderRadius: BorderRadius.circular(30),
                                  placeholderStyle: TextStyle(
                                    color: Colors.grey.shade400,
                                  ),
                                ),
                                const SizedBox(
                                  height: 28,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    const Expanded(
                                      flex: 1,
                                      child: CircleAvatar(
                                        radius: 24,
                                        backgroundImage: AssetImage("assets/images/man.png"),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 3,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: const [
                                          Text(
                                            "dhruviltarpara99",
                                            style: TextStyle(
                                                fontSize: 16,
                                                color: Colors.black),
                                          ),
                                          Text(
                                            "990****9849",
                                            style: TextStyle(
                                                fontSize: 14,
                                                color: Colors.grey),
                                          ),
                                        ],
                                      ),
                                    ),
                                    const Spacer(),
                                    Expanded(
                                      flex: 1,
                                      child: IconButton(
                                        onPressed: () {},
                                        icon: const Icon(
                                          Icons.arrow_forward_ios_sharp,
                                          color: Colors.grey,
                                          size: 16,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 12,
                                ),
                                Row(
                                  children: [
                                    const Expanded(
                                      flex: 0,
                                      child: Divider(),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Divider(
                                        thickness: 1,
                                        color: Colors.grey.shade200,
                                        indent: 90,
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 12,
                                ),
                                Row(
                                  children: [
                                    ElevatedButton(
                                      onPressed: () {},
                                      style: ButtonStyle(
                                        shape: MaterialStateProperty.all(
                                            const CircleBorder()),
                                        backgroundColor:
                                            MaterialStateProperty.all(
                                          Colors.blueAccent.shade700,
                                        ),
                                        elevation: MaterialStateProperty.all(0),
                                      ),
                                      child: const Icon(Icons.wifi),
                                    ),
                                    const Text(
                                      "Wi-Fi",
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.black,
                                      ),
                                    ),
                                    const Spacer(),
                                    Row(
                                      children: [
                                        Text(
                                          "Off",
                                          style: TextStyle(
                                              color: Colors.grey.shade600,
                                              fontSize: 14),
                                        ),
                                        IconButton(
                                          icon: const Icon(
                                            Icons.arrow_forward_ios_sharp,
                                            color: Colors.grey,
                                            size: 16,
                                          ),
                                          onPressed: () {},
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 12,
                                ),
                                Row(
                                  children: [
                                    ElevatedButton(
                                      onPressed: () {},
                                      style: ButtonStyle(
                                        shape: MaterialStateProperty.all(
                                            const CircleBorder()),
                                        backgroundColor:
                                            MaterialStateProperty.all(
                                          Colors.green,
                                        ),
                                        elevation: MaterialStateProperty.all(0),
                                      ),
                                      child: const Icon(
                                        Icons.h_plus_mobiledata_rounded,
                                      ),
                                    ),
                                    const Text(
                                      "Mobile network",
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.black,
                                      ),
                                    ),
                                    const Spacer(),
                                    (button1)
                                        ? const Text(
                                            "On 4G+",
                                            style: TextStyle(
                                              fontSize: 14,
                                              color: Colors.black,
                                            ),
                                          )
                                        : const Text(
                                            "Off",
                                            style: TextStyle(
                                              fontSize: 14,
                                              color: Colors.black,
                                            ),
                                          ),
                                    Switch(
                                      value: button1,
                                      onChanged: (val) {
                                        setState(() {
                                          button1 = val;
                                        });
                                      },
                                      activeTrackColor: Colors.green,
                                      inactiveTrackColor: Colors.grey,
                                      inactiveThumbColor: Colors.black,
                                      activeColor: Colors.white,
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 12,
                                ),
                                Row(
                                  children: [
                                    ElevatedButton(
                                      onPressed: () {},
                                      style: ButtonStyle(
                                        shape: MaterialStateProperty.all(
                                            const CircleBorder()),
                                        backgroundColor:
                                            MaterialStateProperty.all(
                                          Colors.blueAccent,
                                        ),
                                        elevation: MaterialStateProperty.all(0),
                                      ),
                                      child: const Icon(Icons.bluetooth),
                                    ),
                                    const Text(
                                      "Bluetooth",
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.black,
                                      ),
                                    ),
                                    const Spacer(),
                                    (button2)
                                        ? const Text(
                                            "Noise Buds Smart",
                                            style: TextStyle(
                                              fontSize: 14,
                                              color: Colors.black,
                                            ),
                                          )
                                        : const Text(
                                            "Not Connected",
                                            style: TextStyle(
                                              fontSize: 14,
                                              color: Colors.black,
                                            ),
                                          ),
                                    const Spacer(),
                                    Switch(
                                      value: button2,
                                      onChanged: (val) {
                                        setState(() {
                                          button2 = val;
                                        });
                                      },
                                      activeTrackColor: Colors.green,
                                      inactiveTrackColor: Colors.grey,
                                      inactiveThumbColor: Colors.black,
                                      activeColor: Colors.white,
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 12,
                                ),
                                Row(
                                  children: [
                                    ElevatedButton(
                                      onPressed: () {},
                                      style: ButtonStyle(
                                        shape: MaterialStateProperty.all(
                                            const CircleBorder()),
                                        backgroundColor:
                                            MaterialStateProperty.all(
                                          Colors.orange.shade800,
                                        ),
                                        elevation: MaterialStateProperty.all(0),
                                      ),
                                      child: const Icon(Icons.auto_mode_sharp),
                                    ),
                                    const Text(
                                      "Connection & sharing",
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.black,
                                      ),
                                    ),
                                    const Spacer(),
                                    IconButton(
                                      icon: const Icon(
                                        Icons.arrow_forward_ios_sharp,
                                        color: Colors.grey,
                                        size: 16,
                                      ),
                                      onPressed: () {},
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 12,
                                ),
                                Row(
                                  children: [
                                    const Expanded(
                                      flex: 0,
                                      child: Divider(),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Divider(
                                        thickness: 1,
                                        color: Colors.grey.shade200,
                                        indent: 90,
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 12,
                                ),
                                Row(
                                  children: [
                                    ElevatedButton(
                                      onPressed: () {},
                                      style: ButtonStyle(
                                        shape: MaterialStateProperty.all(
                                            const CircleBorder()),
                                        backgroundColor:
                                            MaterialStateProperty.all(
                                          Colors.green.shade600,
                                        ),
                                        elevation: MaterialStateProperty.all(0),
                                      ),
                                      child: const Icon(Icons.person_pin),
                                    ),
                                    const Text(
                                      "Personalisations",
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.black,
                                      ),
                                    ),
                                    const Spacer(),
                                    IconButton(
                                      icon: const Icon(
                                        Icons.arrow_forward_ios_sharp,
                                        color: Colors.grey,
                                        size: 16,
                                      ),
                                      onPressed: () {},
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 12,
                                ),
                                Row(
                                  children: [
                                    ElevatedButton(
                                      onPressed: () {},
                                      style: ButtonStyle(
                                        shape: MaterialStateProperty.all(
                                            const CircleBorder()),
                                        backgroundColor:
                                            MaterialStateProperty.all(
                                          Colors.red,
                                        ),
                                        elevation: MaterialStateProperty.all(0),
                                      ),
                                      child: const Icon(Icons.image_outlined),
                                    ),
                                    const Text(
                                      "Home screen & Lock screen",
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.black,
                                      ),
                                    ),
                                    const Spacer(),
                                    IconButton(
                                      icon: const Icon(
                                        Icons.arrow_forward_ios_sharp,
                                        color: Colors.grey,
                                        size: 16,
                                      ),
                                      onPressed: () {},
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 12,
                                ),
                                Row(
                                  children: [
                                    ElevatedButton(
                                      onPressed: () {},
                                      style: ButtonStyle(
                                        shape: MaterialStateProperty.all(
                                            const CircleBorder()),
                                        backgroundColor:
                                            MaterialStateProperty.all(
                                          Colors.yellowAccent.shade700,
                                        ),
                                        elevation: MaterialStateProperty.all(0),
                                      ),
                                      child: const Icon(Icons.sunny),
                                    ),
                                    const Text(
                                      "Display & brightness",
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.black,
                                      ),
                                    ),
                                    const Spacer(),
                                    IconButton(
                                      icon: const Icon(
                                        Icons.arrow_forward_ios_sharp,
                                        color: Colors.grey,
                                        size: 16,
                                      ),
                                      onPressed: () {},
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 12,
                                ),
                                Row(
                                  children: [
                                    ElevatedButton(
                                      onPressed: () {},
                                      style: ButtonStyle(
                                        shape: MaterialStateProperty.all(
                                            const CircleBorder()),
                                        backgroundColor:
                                            MaterialStateProperty.all(
                                          Colors.indigo,
                                        ),
                                        elevation: MaterialStateProperty.all(0),
                                      ),
                                      child: const Icon(Icons.notifications_on),
                                    ),
                                    const Text(
                                      "Sound & vibration",
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.black,
                                      ),
                                    ),
                                    const Spacer(),
                                    IconButton(
                                      icon: const Icon(
                                        Icons.arrow_forward_ios_sharp,
                                        color: Colors.grey,
                                        size: 16,
                                      ),
                                      onPressed: () {},
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 12,
                                ),
                                Row(
                                  children: [
                                    ElevatedButton(
                                      onPressed: () {},
                                      style: ButtonStyle(
                                        shape: MaterialStateProperty.all(
                                            const CircleBorder()),
                                        backgroundColor:
                                            MaterialStateProperty.all(
                                          Colors.deepOrange,
                                        ),
                                        elevation: MaterialStateProperty.all(0),
                                      ),
                                      child:
                                          const Icon(Icons.apps_outage_rounded),
                                    ),
                                    const Text(
                                      "Notification & status bar",
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.black,
                                      ),
                                    ),
                                    const Spacer(),
                                    IconButton(
                                      icon: const Icon(
                                        Icons.arrow_forward_ios_sharp,
                                        color: Colors.grey,
                                        size: 16,
                                      ),
                                      onPressed: () {},
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 12,
                                ),
                                Row(
                                  children: [
                                    const Expanded(
                                      flex: 0,
                                      child: Divider(),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Divider(
                                        thickness: 1,
                                        color: Colors.grey.shade200,
                                        indent: 90,
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 12,
                                ),
                                Row(
                                  children: [
                                    ElevatedButton(
                                      onPressed: () {},
                                      style: ButtonStyle(
                                        shape: MaterialStateProperty.all(
                                            const CircleBorder()),
                                        backgroundColor:
                                            MaterialStateProperty.all(
                                          Colors.blueAccent.shade700,
                                        ),
                                        elevation: MaterialStateProperty.all(0),
                                      ),
                                      child:
                                          const Icon(Icons.security_outlined),
                                    ),
                                    const Text(
                                      "Password & security",
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.black,
                                      ),
                                    ),
                                    const Spacer(),
                                    IconButton(
                                      icon: const Icon(
                                        Icons.arrow_forward_ios_sharp,
                                        color: Colors.grey,
                                        size: 16,
                                      ),
                                      onPressed: () {},
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 12,
                                ),
                                Row(
                                  children: [
                                    ElevatedButton(
                                      onPressed: () {},
                                      style: ButtonStyle(
                                        shape: MaterialStateProperty.all(
                                            const CircleBorder()),
                                        backgroundColor:
                                            MaterialStateProperty.all(
                                          Colors.cyan,
                                        ),
                                        elevation: MaterialStateProperty.all(0),
                                      ),
                                      child: const Icon(
                                          Icons.private_connectivity),
                                    ),
                                    const Text(
                                      "Privacy",
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.black,
                                      ),
                                    ),
                                    const Spacer(),
                                    IconButton(
                                      icon: const Icon(
                                        Icons.arrow_forward_ios_sharp,
                                        color: Colors.grey,
                                        size: 16,
                                      ),
                                      onPressed: () {},
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 12,
                                ),
                                Row(
                                  children: [
                                    ElevatedButton(
                                      onPressed: () {},
                                      style: ButtonStyle(
                                        shape: MaterialStateProperty.all(
                                            const CircleBorder()),
                                        backgroundColor:
                                            MaterialStateProperty.all(
                                          Colors.green,
                                        ),
                                        elevation: MaterialStateProperty.all(0),
                                      ),
                                      child: const Icon(
                                          Icons.battery_charging_full),
                                    ),
                                    const Text(
                                      "Battery",
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.black,
                                      ),
                                    ),
                                    const Spacer(),
                                    IconButton(
                                      icon: const Icon(
                                        Icons.arrow_forward_ios_sharp,
                                        color: Colors.grey,
                                        size: 16,
                                      ),
                                      onPressed: () {},
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
                backgroundColor: Colors.white,
              ),
            ),
          )
        : CupertinoApp(
            debugShowCheckedModeBanner: false,
            home: SafeArea(
              child: CupertinoPageScaffold(
                resizeToAvoidBottomInset: false,
                backgroundColor: Colors.black,
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Settings",
                                style: TextStyle(
                                  fontSize: 36,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.grey.shade300,
                                ),
                              ),
                              CupertinoSwitch(
                                value: Platform,
                                onChanged: (val) {
                                  setState(() {
                                    Platform = val;
                                  });
                                },
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 10,
                          child: SingleChildScrollView(
                            physics: const BouncingScrollPhysics(),
                            child: Column(
                              children: [
                                CupertinoSearchTextField(
                                  backgroundColor: CupertinoColors.systemGrey
                                      .withOpacity(0.3),
                                  itemColor: CupertinoColors.white,
                                  itemSize: 22,
                                  style: const TextStyle(
                                    color: Colors.white
                                  ),
                                  placeholderStyle: const TextStyle(
                                    color: CupertinoColors.white,
                                  ),
                                ),
                                Card(
                                  margin:
                                      const EdgeInsets.symmetric(vertical: 12),
                                  color: CupertinoColors.inactiveGray
                                      .withOpacity(0.3),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20)),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      children: [
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            const Expanded(
                                              flex: 1,
                                              child: CircleAvatar(
                                                radius: 34,
                                                backgroundColor: CupertinoColors
                                                    .inactiveGray,
                                                backgroundImage: AssetImage("assets/images/man.png"),
                                              ),
                                            ),
                                            Expanded(
                                              flex: 2,
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: const [
                                                  Text(
                                                    "Dhruvil Tarpara",
                                                    style: TextStyle(
                                                      fontSize: 20,
                                                      color:
                                                          CupertinoColors.white,
                                                    ),
                                                  ),
                                                  Text(
                                                    "Apple ID, iCloud, Media & Purchases",
                                                    style: TextStyle(
                                                      fontSize: 10,
                                                      color:
                                                          CupertinoColors.white,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Expanded(
                                              flex: 1,
                                              child: CupertinoButton(
                                                child: const Icon(
                                                  CupertinoIcons.forward,
                                                  color: CupertinoColors
                                                      .activeBlue,
                                                ),
                                                onPressed: () {},
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: const [
                                            Expanded(
                                              flex: 0,
                                              child: Divider(),
                                            ),
                                            Expanded(
                                              flex: 1,
                                              child: Divider(
                                                thickness: 1,
                                                color: CupertinoColors
                                                    .inactiveGray,
                                                indent: 90,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 12),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              const Expanded(
                                                flex: 4,
                                                child: Text(
                                                  "Apple ID Suggestions",
                                                  style: TextStyle(
                                                    fontSize: 18,
                                                    color:
                                                        CupertinoColors.white,
                                                  ),
                                                ),
                                              ),
                                              Expanded(
                                                flex: 1,
                                                child: CupertinoButton(
                                                  child: const Icon(
                                                    CupertinoIcons.forward,
                                                    color: CupertinoColors
                                                        .activeBlue,
                                                  ),
                                                  onPressed: () {},
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Card(
                                  margin:
                                      const EdgeInsets.symmetric(vertical: 10),
                                  color: CupertinoColors.inactiveGray
                                      .withOpacity(0.3),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20)),
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          ElevatedButton(
                                            onPressed: () {},
                                            style: ButtonStyle(
                                              shape: MaterialStateProperty.all(
                                                  const CircleBorder()),
                                              backgroundColor:
                                                  MaterialStateProperty.all(
                                                CupertinoColors.activeOrange,
                                              ),
                                            ),
                                            child: const Icon(
                                                CupertinoIcons.airplane),
                                          ),
                                          const Text(
                                            "Airplane Mode",
                                            style: TextStyle(
                                              fontSize: 16,
                                              color: CupertinoColors.white,
                                            ),
                                          ),
                                          const Spacer(),
                                          CupertinoSwitch(
                                              value: button1,
                                              onChanged: (val) {
                                                setState(() {
                                                  button1 = val;
                                                });
                                              }),
                                        ],
                                      ),
                                      Row(
                                        children: const [
                                          Expanded(
                                            flex: 0,
                                            child: Divider(),
                                          ),
                                          Expanded(
                                            flex: 1,
                                            child: Divider(
                                              thickness: 1,
                                              color:
                                                  CupertinoColors.inactiveGray,
                                              indent: 90,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          ElevatedButton(
                                            onPressed: () {},
                                            style: ButtonStyle(
                                              shape: MaterialStateProperty.all(
                                                  const CircleBorder()),
                                              backgroundColor:
                                                  MaterialStateProperty.all(
                                                CupertinoColors.activeBlue,
                                              ),
                                            ),
                                            child:
                                                const Icon(CupertinoIcons.wifi),
                                          ),
                                          const Text(
                                            "Wi-Fi",
                                            style: TextStyle(
                                              fontSize: 16,
                                              color: CupertinoColors.white,
                                            ),
                                          ),
                                          const Spacer(),
                                          CupertinoButton(
                                            child: Row(
                                              children: const [
                                                Text(
                                                  "Mizingo",
                                                  style: TextStyle(
                                                    fontSize: 14,
                                                    color:
                                                        CupertinoColors.white,
                                                  ),
                                                ),
                                                Icon(
                                                  CupertinoIcons.forward,
                                                  color: CupertinoColors
                                                      .activeGreen,
                                                ),
                                              ],
                                            ),
                                            onPressed: () {},
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: const [
                                          Expanded(
                                            flex: 0,
                                            child: Divider(),
                                          ),
                                          Expanded(
                                            flex: 1,
                                            child: Divider(
                                              thickness: 1,
                                              color:
                                                  CupertinoColors.inactiveGray,
                                              indent: 90,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          ElevatedButton(
                                            onPressed: () {},
                                            style: ButtonStyle(
                                              shape: MaterialStateProperty.all(
                                                  const CircleBorder()),
                                              backgroundColor:
                                                  MaterialStateProperty.all(
                                                CupertinoColors.activeBlue,
                                              ),
                                            ),
                                            child: const Icon(
                                                CupertinoIcons.bluetooth),
                                          ),
                                          const Text(
                                            "Bluetooth",
                                            style: TextStyle(
                                              fontSize: 16,
                                              color: CupertinoColors.white,
                                            ),
                                          ),
                                          const Spacer(),
                                          (button2)
                                              ? const Text(
                                                  "Noise Buds Smart",
                                                  style: TextStyle(
                                                    fontSize: 14,
                                                    color:
                                                        CupertinoColors.white,
                                                  ),
                                                )
                                              : const Text(
                                                  "Not Connected",
                                                  style: TextStyle(
                                                    fontSize: 14,
                                                    color:
                                                        CupertinoColors.white,
                                                  ),
                                                ),
                                          const Spacer(),
                                          CupertinoSwitch(
                                              value: button2,
                                              onChanged: (val) {
                                                setState(() {
                                                  button2 = val;
                                                });
                                              }),
                                        ],
                                      ),
                                      Row(
                                        children: const [
                                          Expanded(
                                            flex: 0,
                                            child: Divider(),
                                          ),
                                          Expanded(
                                            flex: 1,
                                            child: Divider(
                                              thickness: 1,
                                              color:
                                                  CupertinoColors.inactiveGray,
                                              indent: 90,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          ElevatedButton(
                                            onPressed: () {},
                                            style: ButtonStyle(
                                              shape: MaterialStateProperty.all(
                                                  const CircleBorder()),
                                              backgroundColor:
                                                  MaterialStateProperty.all(
                                                CupertinoColors.activeGreen,
                                              ),
                                            ),
                                            child: const Icon(
                                                CupertinoIcons.personalhotspot),
                                          ),
                                          const Text(
                                            "Personal Hotspot",
                                            style: TextStyle(
                                              fontSize: 16,
                                              color: CupertinoColors.white,
                                            ),
                                          ),
                                          const Spacer(),
                                          CupertinoButton(
                                            child: Row(
                                              children: const [
                                                Text(
                                                  "off",
                                                  style: TextStyle(
                                                    fontSize: 14,
                                                    color:
                                                        CupertinoColors.white,
                                                  ),
                                                ),
                                                Icon(
                                                  CupertinoIcons.forward,
                                                  color: CupertinoColors
                                                      .inactiveGray,
                                                ),
                                              ],
                                            ),
                                            onPressed: () {},
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Card(
                                  margin:
                                      const EdgeInsets.symmetric(vertical: 10),
                                  color: CupertinoColors.inactiveGray
                                      .withOpacity(0.3),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20)),
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          ElevatedButton(
                                            onPressed: () {},
                                            style: ButtonStyle(
                                              shape: MaterialStateProperty.all(
                                                  const CircleBorder()),
                                              backgroundColor:
                                                  MaterialStateProperty.all(
                                                CupertinoColors.systemRed,
                                              ),
                                            ),
                                            child: const Icon(
                                                CupertinoIcons.bell_solid),
                                          ),
                                          const Text(
                                            "Notifications",
                                            style: TextStyle(
                                              fontSize: 16,
                                              color: CupertinoColors.white,
                                            ),
                                          ),
                                          const Spacer(),
                                          CupertinoButton(
                                            child: const Icon(
                                              CupertinoIcons.forward,
                                              color:
                                                  CupertinoColors.inactiveGray,
                                            ),
                                            onPressed: () {},
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: const [
                                          Expanded(
                                            flex: 0,
                                            child: Divider(),
                                          ),
                                          Expanded(
                                            flex: 1,
                                            child: Divider(
                                              height: 2,
                                              thickness: 1,
                                              color:
                                                  CupertinoColors.inactiveGray,
                                              indent: 90,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          ElevatedButton(
                                            onPressed: () {},
                                            style: ButtonStyle(
                                              shape: MaterialStateProperty.all(
                                                  const CircleBorder()),
                                              backgroundColor:
                                                  MaterialStateProperty.all(
                                                CupertinoColors.systemPink,
                                              ),
                                            ),
                                            child: const Icon(
                                                CupertinoIcons.speaker_3_fill),
                                          ),
                                          const Text(
                                            "Sounds & Haptics",
                                            style: TextStyle(
                                              fontSize: 16,
                                              color: CupertinoColors.white,
                                            ),
                                          ),
                                          const Spacer(),
                                          CupertinoButton(
                                            child: const Icon(
                                              CupertinoIcons.forward,
                                              color:
                                                  CupertinoColors.inactiveGray,
                                            ),
                                            onPressed: () {},
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: const [
                                          Expanded(
                                            flex: 0,
                                            child: Divider(),
                                          ),
                                          Expanded(
                                            flex: 1,
                                            child: Divider(
                                              height: 2,
                                              thickness: 1,
                                              color:
                                                  CupertinoColors.inactiveGray,
                                              indent: 90,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          ElevatedButton(
                                            onPressed: () {},
                                            style: ButtonStyle(
                                              shape: MaterialStateProperty.all(
                                                  const CircleBorder()),
                                              backgroundColor:
                                                  MaterialStateProperty.all(
                                                CupertinoColors.systemIndigo,
                                              ),
                                            ),
                                            child: const Icon(
                                                CupertinoIcons.moon_fill),
                                          ),
                                          const Text(
                                            "Focus",
                                            style: TextStyle(
                                              fontSize: 16,
                                              color: CupertinoColors.white,
                                            ),
                                          ),
                                          const Spacer(),
                                          CupertinoButton(
                                            child: const Icon(
                                              CupertinoIcons.forward,
                                              color:
                                                  CupertinoColors.inactiveGray,
                                            ),
                                            onPressed: () {},
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: const [
                                          Expanded(
                                            flex: 0,
                                            child: Divider(),
                                          ),
                                          Expanded(
                                            flex: 1,
                                            child: Divider(
                                              height: 2,
                                              thickness: 1,
                                              color:
                                                  CupertinoColors.inactiveGray,
                                              indent: 90,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          ElevatedButton(
                                            onPressed: () {},
                                            style: ButtonStyle(
                                              shape: MaterialStateProperty.all(
                                                  const CircleBorder()),
                                              backgroundColor:
                                                  MaterialStateProperty.all(
                                                CupertinoColors.systemTeal,
                                              ),
                                            ),
                                            child:
                                                const Icon(CupertinoIcons.time),
                                          ),
                                          const Text(
                                            "Screen Time",
                                            style: TextStyle(
                                              fontSize: 16,
                                              color: CupertinoColors.white,
                                            ),
                                          ),
                                          const Spacer(),
                                          CupertinoButton(
                                            child: const Icon(
                                              CupertinoIcons.forward,
                                              color:
                                                  CupertinoColors.inactiveGray,
                                            ),
                                            onPressed: () {},
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
  }
}
