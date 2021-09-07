import 'package:flutter_shop_getx/models/product.dart';
import 'package:flutter_shop_getx/services/api_services.dart';
import 'package:get/state_manager.dart';

class ProductLorealController extends GetxController {
  var isLoading = true.obs;
  var productList = <Product>[].obs;

  @override
  void onInit() {
    fetchProductLoreal();
    super.onInit();
  }

  void fetchProductLoreal() async {
    try {
      isLoading(true);
      var products = await ApiService.fetchProductLoreal();
      if (products != null) {
        productList.value = products;
      }
    } finally {
      isLoading(false);
    }
  }
}
