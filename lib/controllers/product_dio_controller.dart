import 'package:flutter_shop_getx/models/product.dart';
import 'package:flutter_shop_getx/services/api_services.dart';
import 'package:get/state_manager.dart';

class ProductDiorController extends GetxController {
  var isLoading = true.obs;
  var productList = <Product>[].obs;

  @override
  void onInit() {
    fetchProductDior();
    super.onInit();
  }

  void fetchProductDior() async {
    try {
      isLoading(true);
      var products = await ApiService.fetchProductDior();
      if (products != null) {
        productList.value = products;
      }
    } finally {
      isLoading(false);
    }
  }
}
