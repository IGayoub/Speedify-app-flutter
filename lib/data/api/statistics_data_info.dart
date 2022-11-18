import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class StDataInfo{
    static Map<String, dynamic> launchState({value}) {
    switch (value) {
      case 0:
        return {
          'ds': [
            {
              'name': 'Data Encrypted',
              'dataName': '10 GB',
              'icon': FontAwesomeIcons.lock,
            },
            {
              'name': 'Top Download Speed',
              'dataName': '20 Mbps',
              'icon': FontAwesomeIcons.downLong,
            },
            {
              'name': 'Top Upload Speed',
              'dataName': '3 Mbps',
              'icon': FontAwesomeIcons.upLong,
            }
          ],
        };
      case 1:
        return {
          'ds': [
            {
              'name': 'Data Encrypted',
              'dataName': '160 GB',
              'icon': FontAwesomeIcons.lock,
            },
            {
              'name': 'Top Download Speed',
              'dataName': '19 Mbps',
              'icon': FontAwesomeIcons.downLong,
            },
            {
              'name': 'Top Upload Speed',
              'dataName': '20 Mbps',
              'icon': FontAwesomeIcons.upLong,
            }
          ],
        };
      case 2:
        return {
          'ds': [
            {
              'name': 'Data Encrypted',
              'dataName': '800 GB',
              'icon': FontAwesomeIcons.lock,
            },
            {
              'name': 'Top Download Speed',
              'dataName': '40 Mbps',
              'icon': FontAwesomeIcons.downLong,
            },
            {
              'name': 'Top Upload Speed',
              'dataName': '55 Mbps',
              'icon': FontAwesomeIcons.upLong,
            },
          ],
        };
      case 3:
        return {
          'ds': [
            {
              'name': 'Data Encrypted',
              'dataName': '2000 GB',
              'icon': FontAwesomeIcons.lock,
            },
            {
              'name': 'Top Download Speed',
              'dataName': '90 Mbps',
              'icon': FontAwesomeIcons.downLong,
            },
            {
              'name': 'Top Upload Speed',
              'dataName': '9 Mbps',
              'icon': FontAwesomeIcons.upLong,
            }
          ]
        };
      default:
        return {};
    }
  }
}