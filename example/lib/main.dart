import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter/services.dart';
import 'package:flutter_cblue/flutter_cblue.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String _platformVersion = 'Unknown';

  @override
  void initState() {
    super.initState();
    initPlatformState();
  }

  // Platform messages are asynchronous, so we initialize in an async method.
  Future<void> initPlatformState() async {
    String platformVersion;
    // Platform messages may fail, so we use a try/catch PlatformException.
    try {
      platformVersion = await FlutterCblue.platformVersion;
    } on PlatformException {
      platformVersion = 'Failed to get platform version.';
    }

    // If the widget was removed from the tree while the asynchronous platform
    // message was in flight, we want to discard the reply rather than calling
    // setState to update our non-existent appearance.
    if (!mounted) return;

    setState(() {
      _platformVersion = platformVersion;
    });
  }

  String greekString = """CT~~CD,~CC^~CT~
^XA
~TA000
~JSN
^LT0
^MNW
^MTT
^PON
^PMN
^LH0,0
^JMA
^PR8,8
~SD15
^JUS
^LRN
^CI27
^PA0,1,1,0
^XZ
^XA
^MMT
^PW799
^LL799
^LS0
^FO515,728^GFA,613,1944,36,:Z64:eJyF1c1t3DAQBeARdNAtKoEtpIAAbCWdDA0X4JLMIIWECx9yleGDeRA4fkOK8v5qeBAE6dvFIzkcER0Md/RyGxxNMshimklW0zgRO46IFWgQkWTGeTONk2fTcBktM0gZ39NPI04Zl9+/jDgw5HEn5OOQcZkXF2fMdiWfhoLnrlQTmpma8ZuR3Ew+N+7CjFKaSWcmNJM2M4k0E7vhwMFn/Mh1g8vTlREJnHWLu8Htnxuj5YYXsZt8bTyMBJqbWfh59cmfbONuTBmaCd3Ea+PURGzOmZnfu8nNnFABMJnvmbKZVasEhjbD4dvgz2HmExY20fjApN0sDwy2t5qPPH3CrIVu85AvaqaPPP9faLhvZnntJl+avj5CI5ZEzeLe1Kx3TKRqRlncXxx9+Tb7fmEu/tJgO17UuMzbvvOKQNUkj0eYpesG9YMagXEaKOhJSx5lR7wbrcNmJg3UDF8aredmtI9xNZEDWhEv3ei5qCYRr1o3CIJlgPG7QfxmtMqn3bCaPi89p9UUVNW/ah4OTLvao6FlxVZnFQ1kdGiv+x6PDQJ5q0EjkN3oMSvzg+HleHVaoGIRBMqmIbPNayAzDtEPm/TxBTDTPSA=:8EDC
^FO187,752^GFA,269,792,24,:Z64:eJzVkbENQyEMBYl+QckGsIgFa1EghSJjZJQUfxRGoKRAUZ5xiCxlgYTiDCfAYBvzH8PW6/ONZtuCTD7e9dABhOE6qykIIw0AYYahfJpJUGJiZbKAqESAKHsiVl1QYvYAB2yw9dIE2cMz1sTW4xRgabR3VYBrxXMGqGAE2Yd1yIexfDSC7K1419nfcHoBQu+/I9tC9l7f/9j45JX3zI0SSf9rbBBFXYfGdWvfdTs3UOKp67yBlgzVF8NNW2iH6uOvjRdC/pd5:A764
^FO169,724^GFA,469,1152,32,:Z64:eJzd0rFOwzAQBuCLPHhB8hMQ8wiMSLWSV+EVmCiiah15yEbfgOdgqZQog8e+AGoTZehG3KlBimxyroWAgQoxwU2WvuHu/jPADyv+Wz7t4yRqdWkElRZS4I8sMjPoE5hx9ImNXdZs972gyklXpJvPnjo+unsd0EtXLywjZhaNPnhPOM/LxvRC0Lxqx8eckd5GwwJsKkcXjJMiqqfomSqMSeCLx+8uqbyrY6C9JcMiCj5Hbw26Cf7Ukefb7GVS4HwW3aErG3zVkc0h6+69G+9ydOly72zV0c1BBQf0HtB58HOdP7SVvqmxv/faO9FH5zpfjr73fub9WgiWqcrvx7leLlt99CRGN0YkPK8qzAdiXq1Zs8uNwf6Dn68ZYw75QszUmpY7VaNzdEA/hPtAwtSWlt3RKe4HaeaoDvcdI80sLRyppx/+gQAqv/s2v/WrE355wi9O+H+tN7qC4sY=:AF87
^FO628,543^GFA,237,480,20,:Z64:eJylzzsOwjAMBuBMdCsrQw4SFs7EysTYLbkAEufoBsrAllyhVoZsPMQUKdTYoUIdEOLhwVI+6bcdId6XemmzyTem4CjBwj7efNXabR96NifhcLGnjCaRRbagJbiV1fKquceawpFsN6dX2FBXxbAeLI7MZPTJNhkl2ZJ3CPCD5ZHRXsfZrhhn1dOA9z4My300dT1NaM7lPtT8D2zyomrJyrwfq/vQ/q07o7p/SQ==:AB87
^FO397,343^GB0,228,2^FS
^FO272,543^GFA,245,384,16,:Z64:eJxjYMAG+EEEH4Ivj8aXQeNbwPnP+xjP8/+wsDxX8PCdDHsDQ/05hv/zf9RYnit8/E9G/gFD5TmGz3MswPx5MjIPGArPMTyeY5FjnVf8nE/GooCh+PyH53Ms3lnnlUP49f0//vP/APLLIPw6Pps//D+PW+nVQfgFfDIPZCyP29nVQPnnZB7OAfErIObb98nUy/9u3iNX8fjf//kPGOT5ZOz4QXyg+/63N2D1PT0BAHc4URk=:1EA4
^FO125,543^GFA,81,192,8,:Z64:eJxjYEAHbIwNWGiLB9//75AB0g9h9OF2CyDN8PBwHxo9BxttAaP/H/6DTIMAjLb/g53GBwDgaSY/:F4B2
^FO18,251^GB762,0,2^FS
^FO18,251^GB0,288,2^FS
^FO778,250^GB0,289,2^FS
^FO19,343^GB761,0,2^FS
^FO220,252^GB0,93,2^FS
^FO332,251^GB0,93,2^FS
^FO461,251^GB0,93,2^FS
^FO577,251^GB0,93,2^FS
^FO579,297^GB201,0,2^FS
^FO602,262^GFA,401,624,24,:Z64:eJy90T9KxEAUBvA3eeFlixAtpwjiESZosYWFeJKIoK0HEE3Y3m0tBK9gbjBhIHZ7BsFeIzYpwq5v/iTbWDsww8ePmUC+F4NbC97nPkI8QchV8Mge0mcCEJOjPQ7nOyKwD2q+g7Pbh4rkyRFohBRR6h4GMQRPi13wMzOKMdk6LykrPla9qCSxp/iYJaCdU9GuR+9dhpRj5R2L+nnj/LQjQimCi2b11IlKEV5r9iVo7/D9okzwe0I1uWi2fzo279ZvCS/sd/Ze1K/sHEyXJUnwY3bDDmWE5i3FNbv734cvtZMdQolozHC5W0Lr/VPd5RvkKrBu+/JHirqaej4YI9Cu3jLKsZ7ngj2xh7oS3M9Rx6zWr7jPaB4y6AW7nfsN9x/DP6xfX6Ro7g==:5F86
^FO475,298^GB80,0,2^FS
^FO18,298^GB202,0,2^FS
^FT547,627^A0I,56,56^FB296,1,14,C^FH\^CI28^FDbranchName^FS^CI27
^FT126,727^A0I,28,28^FB84,1,7,C^FH\^CI28^FDzoneNo^FS^CI27
^FT148,759^A0I,28,28^FB128,1,7,C^FH\^CI28^FDterminalNo^FS^CI27
^FT610,548^A0I,20,20^FH\^CI28^FD00/00/0000 - 00:00:00^FS^CI27
^FT120,548^A0I,20,20^FH\^CI28^FD00/00/0000^FS^CI27
^FT580,197^A0I,56,56^FH\^CI28^FD21 01 0006 3022 2096^FS^CI27
^FT720,310^A0I,31,30^FH\^CI28^FD00.00^FS^CI27
^FT597,307^A0I,34,33^FH\^CI28^FDquantityTop^FS^CI27
^FT619,262^A0I,34,33^FH\^CI28^FDquantityBottom^FS^CI27
^FT174,312^A0I,34,33^FB115,1,9,C^FH\^CI28^FDboxType^FS^CI27
^FT207,266^A0I,34,33^FB180,1,9,C^FH\^CI28^FDdeliveryType^FS^CI27
^FT772,503^A0I,34,33^FH\^CI28^FDsenderName^FS^CI27
^FPH,8^FT769,478^API,20,6^FH\^FDsenderPhone^FS
^FPH,3^FT389,503^A0I,34,33^FH\^CI28^FDreceiverName^FS^CI27
^FT389,471^AFI,26,13^FH\^FDreceiverPhone^FS
^FPH,1^FT388,440^ACI,18,10^FH\^FDreceiverAddress^FS
^FPH,1^FT769,440^ACI,18,10^FH\^FDsenderAddress^FS
^BY4,3,160^FT639,29^BCI,,N,N
^FH\^FD>;2101000630222096^FS
^FT329,311^A0I,14,15^FB104,1,4,C^FH\^CI28^FDплатити^FS^CI27
^FT329,293^A0I,14,15^FB104,1,4,C^FH\^CI28^FDбіля^FS^CI27
^FT329,275^A0I,14,15^FB104,1,4,C^FH\^CI28^FDдверей^FS^CI27
^FT460,304^A0I,14,15^FB127,1,4,C^FH\^CI28^FDоплата^FS^CI27
^FT460,286^A0I,14,15^FB127,1,4,C^FH\^CI28^FDвідправника^FS^CI27
^LRY^FO18,716^GB132,0,77^FS^LRN
^LRY^FO18,582^GB762,0,131^FS^LRN
^LRY^FO18,539^GB762,0,32^FS^LRN
^PQ1,0,1,Y
^XZ
""";

//2101000630222096

  void printBT(String _str) async {
    print(await FlutterCblue.printToBT(
        printStr: _str, deviceName: "Murat’ın aşki")); // default logType
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Center(
            child: FlatButton(
          child: Text('Running on: $_platformVersion\n'),
          onPressed: () {
            printBT(greekString);
          },
        )),
      ),
    );
  }
}
