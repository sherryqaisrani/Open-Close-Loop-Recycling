import 'package:get/get.dart';

import '../routes/routes.dart';
import '../services/auth/firebase_auth.dart';
import '../widgets/generic_snake_bar.dart';

class HomeController extends GetxController {
  // Onloading -
  bool isloading = false;
  void updateIsLoading() {
    isloading = !isloading;
    update();
  }
  // **********************************************
  // ********** Firebase - Crud - Operations *******************
  //***********************************************

  // Creating - The - Object - DbHelper

  DbHelper _dbHelper = DbHelper();

  // Creating - New - User - Here

  Future<void> signOut() async {
    updateIsLoading();
    String response = await _dbHelper.signOut();
    // Checking - Response ->
    if (response == 'success') {
      GenericSnackBar(text: "Successfully Signout!");
      Get.offAllNamed(AppRoutes.SIGN_IN_ROUTE);
      updateIsLoading();
    } else {
      updateIsLoading();
    }
  }

  // Selected - tab - inde
  int selectedTabIndex = 0;
  updateSelectedIndex(int index) {
    selectedTabIndex = index;
    update();
  }

  // Selected - Bottom - tab - inde
  int selectedBottomTabIndex = 0;
  updateSelectedBottomIndex(int index) {
    selectedBottomTabIndex = index;
    update();
  }
}
