// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import './provider.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:simply_wifi/simply_wifi.dart';
import'package:wifi_iot/wifi_iot.dart';

class Devices extends StatefulWidget {
  const Devices({
    super.key,
  });

  @override
  State<Devices> createState() => DevicesPage();
}

class DevicesPage extends State<Devices> {
  Widget BodyData =  const Center(child: Text("No Wifi Found"),);
  DevicesPage() {
    wifi().then((value) => setState(() {
          BodyData = value;
        }));
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Devices",
          style: TextStyle(
              color: Colors.white,
              fontSize: MediaQuery.textScaleFactorOf(context) * 18,
              fontWeight: FontWeight.w700),
        ),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: BodyData,
    );
  }

  Future<Widget> wifi() async {
    SimplyWifi.init();

    // To turn on wifi dynamically
    SimplyWifi.turnOnWifi();
    List<WifiNetwork> wifiNetworks = await SimplyWifi.getListOfWifis();

    // if (i.ssid == "itag") {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const Provider()));
          },
          child: Container(
            margin: EdgeInsets.only(
              // ignore: use_build_context_synchronously
              top: MediaQuery.of(context).size.height * 0.04,
              // ignore: use_build_context_synchronously
              left: MediaQuery.of(context).size.width * 0.05,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(wifiNetworks[0].ssid,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize:
                                // ignore: use_build_context_synchronously
                                MediaQuery.textScaleFactorOf(context) * 16,
                            fontWeight: FontWeight.w500)),
                    IconButton(
                        padding: EdgeInsets.only(
                            // ignore: use_build_context_synchronously
                            left: MediaQuery.of(context).size.width * 0.1),
                        onPressed: () {
                          
                        },
                        icon: const Icon(Icons.qr_code_2_rounded))
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      Padding(
        padding:
            // ignore: use_build_context_synchronously
            EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.02),
        child: const Divider(
          color: Colors.black,
          thickness: 0.5,
          height: 1,
        ),
      )
    ]);
  }
}
// }
