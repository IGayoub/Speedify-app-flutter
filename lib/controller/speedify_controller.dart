import 'dart:async';

import 'package:get/get.dart';

class SpeedifyController extends GetxController {
  RxInt sch = 0.obs;
  RxInt chServer = 0.obs;
  RxBool isLoading = false.obs;
  RxBool isConnecting = false.obs;
  void changeTimesState({index}) {
    sch.value = index;
  }

  void loadingServers() {
    isLoading.value = true;
    Timer(const Duration(seconds: 10), () {
      isConnecting.value = true;
      Timer(const Duration(seconds: 5), () {
        isLoading.value = false;
        isConnecting.value = false;
      });
    });
  }

  void changeServer({value}) {
    chServer.value = value;
  }
}
