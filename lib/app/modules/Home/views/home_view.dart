import 'dart:ffi';

import 'package:connection/app/models/sell_announcement_model.dart';
import 'package:connection/app/shares/widgets/custom_app_bar.dart';
import 'package:connection/app/shares/widgets/custom_text.dart';
import 'package:connection/app/shares/widgets/custom_title_text.dart';
import 'package:connection/app/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../shares/utils/convert_date_time.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const CustomAppBar(),
        body: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomTitleText(
                    title: 'แนะนำเกษตรกร',
                    onPressed: () {},
                  ),
                  _buildReccomended(context),
                  CustomTitleText(
                    title: 'การซื้อขายยอดนิยม',
                    onPressed: () {},
                  ),
                  _buildTradePopular(context),
                ],
              ),
            ),
            SliverAppBar(
              pinned: true,
              elevation: 0,
              backgroundColor: Colors.white,
              flexibleSpace: Row(
                children: [
                  Container(
                    color: Colors.transparent,
                    width: MediaQuery
                        .of(context)
                        .size
                        .width / 1.5,
                    child: TabBar(
                      indicatorColor: ThemeConfig.primaryColor,
                      labelColor: Colors.black,
                      indicatorPadding: const EdgeInsets.symmetric(horizontal: 40),
                      labelStyle: const TextStyle(fontSize: 16),
                      tabs: const [
                        Tab(
                          text: 'ประกาศขาย',
                        ),
                        Tab(
                          text: 'ประกาศรับซื้อ',
                        ),
                      ],
                      controller: controller.tabController,
                    ),
                  ),
                ],
              ),
            ),
            SliverToBoxAdapter(
              child: ListView.builder(
                  shrinkWrap: true,
                  key: UniqueKey(),
                  itemCount: SellAnnouncementModel.datas.length,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    final item = SellAnnouncementModel.datas[index];


                    return Card(
                      child: Column(
                        children: [
                          SizedBox(
                            height: 170,
                            width: MediaQuery
                                .of(context)
                                .size
                                .width,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(16),
                              child: PageView.builder(
                                controller: controller.controller,
                                itemCount: item.images.length,
                                itemBuilder: (context, indexImage) {
                                  final image = item.images[indexImage];
                                  return Image.network(image.path, fit: BoxFit.fitWidth);
                                },
                                onPageChanged: (v) {
                                  item.images[v].setCurrentIndex(v);
                                  controller.currentIndicator.value = v;
                                  controller.currentIndicatorList.value = [index , v];
                                  print(controller.currentIndicator);
                                  print(controller.currentIndicatorList);
                                },
                              ),
                            ),
                          ).marginOnly(bottom: 10),
                          Obx(() {
                            return Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: item.images.map((e) {
                                final indexx = item.images.indexOf(e);
                                return GestureDetector(
                                // onTap: () => controller.controller.jumpTo(e.key.toDouble()),
                                child: Container(
                                  width: 12.0,
                                  height: 12.0,
                                  margin: EdgeInsets.only(right: 10),
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: (Theme.of(context).brightness == Brightness.dark ? Colors.black : Colors.black)
                                          .withOpacity(

                                        controller.currentIndicatorList[0] == index &&
                                            controller.currentIndicatorList[1] == indexx

                                              ? 0.9 : 0.4 ,
                                      )),
                                ),

                              );
                              }).toList(),
                            );
                          }),

                          /*widget.state.toList().asMap().entries.map((entry) {
                            return GestureDetector(
                              onTap: () => widget.carouselController.jumpToPage(entry.key),
                              child: Container(
                                width: 12.0,
                                height: 12.0,
                                margin: EdgeInsets.only(right: 10),
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: (Theme.of(context).brightness == Brightness.dark ? Colors.white : Colors.white)
                                        .withOpacity(_current == entry.key ? 0.9 : 0.4)),
                              ),
                            );
                          }).toList(),*/
                        ],
                      ).paddingAll(8),
                    );
                  }),
            ),
          ],
        ));
  }

  _buildTradePopular(BuildContext context) {
    return MediaQuery.removePadding(
      context: context,
      removeBottom: true,
      removeTop: true,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
            shrinkWrap: true,
            itemCount: controller.products
                .take(3)
                .length,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              final product = controller.products[index];
              return Card(
                elevation: 2,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      CustomText(
                        text: '${index + 1}',
                        color: ThemeConfig.primaryColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ).paddingSymmetric(horizontal: 8),
                      SizedBox(
                        height: 80,
                        width: 80,
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.network(
                              product.image,
                              width: 100,
                              fit: BoxFit.fitHeight,
                            )),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomText(text: product.name, fontSize: 20, fontWeight: FontWeight.bold),
                          const CustomText(
                            text: 'ราคาเฉลี่ย',
                            fontSize: 14,
                          ),
                          Row(
                            children: [
                              CustomText(
                                  text: '^${product.avgPrice}',
                                  fontSize: 16,
                                  color: Colors.green,
                                  fontWeight: FontWeight.bold),
                              const CustomText(text: 'บาท/กิโลกรัม', color: ThemeConfig.grey929292)
                                  .marginOnly(left: 16),
                            ],
                          ),
                          Row(
                            children: [
                              const CustomText(
                                text: 'ข้อมูลล่าสุด ณ วันที่',
                                fontSize: 12,
                                color: ThemeConfig.grey929292,
                              ),
                              CustomText(
                                  text: convertToThaiBuddhistEra(product.lastUpdate),
                                  fontSize: 12,
                                  color: ThemeConfig.grey929292)
                                  .marginOnly(left: 10),
                            ],
                          ),
                        ],
                      ).marginOnly(left: 10)
                    ],
                  ),
                ),
              );
            }),
      ),
    );
  }

  SingleChildScrollView _buildReccomended(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: List.generate(controller.users.length, (index) {
          final user = controller.users[index];
          return SizedBox(
            width: MediaQuery
                .of(context)
                .size
                .width / 2.5,
            child: Card(
              child: Column(
                children: [
                  Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Container(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: ClipRRect(
                          borderRadius: const BorderRadius.only(
                            topRight: Radius.circular(8),
                            topLeft: Radius.circular(8),
                          ),
                          child: Image.network(user.cover, width: 150),
                        ),
                      ),
                      const Positioned(
                        bottom: 0,
                        left: 0,
                        right: 0,
                        child: CircleAvatar(
                          radius: 27,
                          backgroundColor: Colors.white,
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        left: 0,
                        right: 0,
                        child: CircleAvatar(
                          radius: 25,
                          backgroundImage: NetworkImage(user.profile),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      CustomText(text: user.username, fontSize: 18, fontWeight: FontWeight.bold),
                      CustomText(text: user.role, fontSize: 12, color: ThemeConfig.grey929292),
                      CustomText(text: user.address, fontSize: 16).paddingSymmetric(vertical: 8),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const CustomText(
                              text: 'ผู้ติดตาม ', fontSize: 12, color: ThemeConfig.grey929292)
                              .paddingOnly(bottom: 8),
                          CustomText(
                              text: user.follower.toString(),
                              fontSize: 14,
                              fontWeight: FontWeight.bold)
                              .paddingOnly(bottom: 8),
                        ],
                      ),
                      CustomText(text: user.description, fontSize: 12, maxLine: 2),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                        decoration: BoxDecoration(
                            color: ThemeConfig.primaryColor,
                            borderRadius: BorderRadius.circular(14)),
                        child: const CustomText(
                          text: 'ติดตาม',
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ).marginOnly(top: 5, bottom: 5),
                    ],
                  ).paddingAll(8),
                ],
              ),
            ),
          );
        }),
      ),
    );
  }
}
