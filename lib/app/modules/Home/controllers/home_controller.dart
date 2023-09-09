import 'package:connection/app/models/product_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../models/sell_announcement_model.dart';
import '../../../models/user_model.dart';
import '../../../shares/utils/convert_money_to_unit_name.dart';

class HomeController extends GetxController with GetSingleTickerProviderStateMixin {
  //TODO: Implement HomeController

  final count = 0.obs;
  late final TabController tabController;

  RxList<UserModel> users = <UserModel>[].obs;
  RxList<ProductModel> products = <ProductModel>[].obs;

  RxInt currentIndicator = 0.obs;

  RxList<int> currentIndicatorList = <int>[0,0].obs;
  RxList<SellAnnouncementImageModel> data = <SellAnnouncementImageModel>[].obs;
  PageController controller = PageController();


  @override
  void onInit() {
    users.value = [
      UserModel(
        userId: 1,
        username: 'Farm ฮัก',
        cover: 'https://cdn.pixabay.com/photo/2016/11/29/05/25/chicken-1867521_1280.jpg',
        profile: 'https://cdn.pixabay.com/photo/2016/11/29/05/32/rooster-1867562_1280.jpg',
        address: '201 หมู่5 ต.วังตามัว อ.เมืองนครพนม จ.นครพนม 48000',
        lat: 17.4041485,
        lon: 103.7346118,
        follower: convertMoneyToUnitName(15000),
        description: 'เป็นฟาร์มผักสลัด ที่ปลูกแต่ผักสลัด และสลัดเป็นฟาร์มผักสลัด ที่ปลูกแต่ผักสลัด',
        role: 'เกษตรกร',
      ),
      UserModel(
        userId: 2,
        username: 'Farm ฮัก',
        cover: 'https://cdn.pixabay.com/photo/2018/05/09/22/44/piglet-3386356_1280.jpg',
        profile: 'https://cdn.pixabay.com/photo/2018/05/09/22/44/piglet-3386356_1280.jpg',
        address: '201 หมู่5 ต.วังตามัว อ.เมืองนครพนม จ.นครพนม 48000',
        lat: 17.4041485,
        lon: 103.7346118,
        follower: convertMoneyToUnitName(5500),
        description: '',
        role: 'เกษตรกร',
      ),
      UserModel(
        userId: 3,
        username: 'Farm ฮัก',
        cover: 'https://cdn.pixabay.com/photo/2017/08/18/19/48/grapes-2656259_1280.jpg',
        profile: 'https://cdn.pixabay.com/photo/2017/02/02/14/04/grapes-2032838_1280.jpg',
        address: '201 หมู่5 ต.วังตามัว อ.เมืองนครพนม จ.นครพนม 48000',
        lat: 17.4041485,
        lon: 103.7346118,
        follower: convertMoneyToUnitName(1500000),
        description: 'เป็นฟาร์มผักสลัด ที่ปลูกแต่ผักสลัด และสลัดเป็นฟาร์มผักสลัด ที่ปลูกแต่ผักสลัด',
        role: 'เกษตรกร',
      ),
      UserModel(
        userId: 4,
        username: 'Farm ฮัก',
        cover: 'https://cdn.pixabay.com/photo/2016/11/29/05/25/chicken-1867521_1280.jpg',
        profile: 'https://cdn.pixabay.com/photo/2016/11/29/05/32/rooster-1867562_1280.jpg',
        address: '201 หมู่5 ต.วังตามัว อ.เมืองนครพนม จ.นครพนม 48000',
        lat: 17.4041485,
        lon: 103.7346118,
        follower: '322',
        description: 'เป็นฟาร์มผักสลัด ที่ปลูกแต่ผักสลัด และสลัดเป็นฟาร์มผักสลัด ที่ปลูกแต่ผักสลัด',
        role: 'เกษตรกร',
      ),
      UserModel(
        userId: 5,
        username: 'Farm ฮัก',
        cover: 'https://cdn.pixabay.com/photo/2018/05/09/22/44/piglet-3386356_1280.jpg',
        profile: 'https://cdn.pixabay.com/photo/2018/05/09/22/44/piglet-3386356_1280.jpg',
        address: '201 หมู่5 ต.วังตามัว อ.เมืองนครพนม จ.นครพนม 48000',
        lat: 17.4041485,
        lon: 103.7346118,
        follower: '322',
        description: 'เป็นฟาร์มผักสลัด ที่ปลูกแต่ผักสลัด และสลัดเป็นฟาร์มผักสลัด ที่ปลูกแต่ผักสลัด',
        role: 'เกษตรกร',
      ),
      UserModel(
        userId: 6,
        username: 'Farm ฮัก',
        cover: 'https://cdn.pixabay.com/photo/2017/08/18/19/48/grapes-2656259_1280.jpg',
        profile: 'https://cdn.pixabay.com/photo/2017/02/02/14/04/grapes-2032838_1280.jpg',
        address: '201 หมู่5 ต.วังตามัว อ.เมืองนครพนม จ.นครพนม 48000',
        lat: 17.4041485,
        lon: 103.7346118,
        follower: '322',
        description: 'เป็นฟาร์มผักสลัด ที่ปลูกแต่ผักสลัด และสลัดเป็นฟาร์มผักสลัด ที่ปลูกแต่ผักสลัด',
        role: 'เกษตรกร',
      ),
    ];

    products.value = [
      ProductModel(
        id: 1,
        name: 'ผักกาดขาว',
        image: 'https://cdn.pixabay.com/photo/2016/12/13/08/10/vegetable-1903490_640.jpg',
        avgPrice: 120.00,
        lastUpdate: DateTime.now(),
      ),
      ProductModel(
        id: 2,
        name: 'ผักกาดขาว',
        image: 'https://cdn.pixabay.com/photo/2014/04/07/01/40/turnip-318148_640.jpg',
        avgPrice: 120.00,
        lastUpdate: DateTime.now(),
      ),
      ProductModel(
        id: 3,
        name: 'ผักกาดขาว',
        image: 'https://cdn.pixabay.com/photo/2016/08/11/08/04/vegetables-1584999_640.jpg',
        avgPrice: 120.00,
        lastUpdate: DateTime.now(),
      ),
      ProductModel(
        id: 4,
        name: 'ผักกาดขาว',
        image: 'https://cdn.pixabay.com/photo/2017/10/09/19/29/eat-2834549_640.jpg',
        avgPrice: 120.00,
        lastUpdate: DateTime.now(),
      ),
    ];

    super.onInit();
    tabController = TabController(length: 2, vsync: this);
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
  
 
}
