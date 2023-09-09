class SellAnnouncementModel {
  final int id;
  final String name;
  final String profile;
  final List<SellAnnouncementImageModel> images;
  final String address;
  final double lat;
  final double lon;
  final double qtyToSell;
  final double startPriceRangeForSell;
  final double endPriceRangeForSell;
  final String contact;
  final String detail;

  SellAnnouncementModel({
    required this.id,
    required this.name,
    required this.profile,
    required this.images,
    required this.address,
    required this.lat,
    required this.lon,
    required this.qtyToSell,
    required this.startPriceRangeForSell,
    required this.endPriceRangeForSell,
    required this.contact,
    required this.detail,
  });

  static final datas = [
    SellAnnouncementModel(
      id: 1,
      name: 'Farm ฮัก',
      profile: 'https://cdn.pixabay.com/photo/2017/10/09/19/29/eat-2834549_640.jpg',
      images: [
        SellAnnouncementImageModel(id: 1, path: 'https://cdn.pixabay.com/photo/2015/05/04/10/16/vegetables-752153_640.jpg', currentIndex: 0),
        SellAnnouncementImageModel(id: 2, path: 'https://cdn.pixabay.com/photo/2017/09/16/19/21/salad-2756467_640.jpg', currentIndex: 0),
        SellAnnouncementImageModel(id: 3, path: 'https://cdn.pixabay.com/photo/2017/10/09/19/29/eat-2834549_640.jpg', currentIndex: 0),
      ],
      address: '201 หมู่5 ต.วังตามัว อ.เมืองนครพนม จ.นครพนม 48000',
      lat: 17.4041485,
      lon: 103.7346118,
      qtyToSell: 5,
      startPriceRangeForSell: 50000,
      endPriceRangeForSell: 70000,
      contact: '0927043617',
      detail: 'เริ่มเก็บเกี่ยวได้วันที่ 32 ธ.ค. 2566',
    ),
    SellAnnouncementModel(
      id: 2,
      name: 'Farm ฮัก',
      profile: 'https://cdn.pixabay.com/photo/2017/10/09/19/29/eat-2834549_640.jpg',
      images: [
        SellAnnouncementImageModel(id: 1, path: 'https://cdn.pixabay.com/photo/2015/05/04/10/16/vegetables-752153_640.jpg', currentIndex: 0),
        SellAnnouncementImageModel(id: 2, path: 'https://cdn.pixabay.com/photo/2017/09/16/19/21/salad-2756467_640.jpg', currentIndex: 0),
        SellAnnouncementImageModel(id: 3, path: 'https://cdn.pixabay.com/photo/2017/10/09/19/29/eat-2834549_640.jpg', currentIndex: 0),
        SellAnnouncementImageModel(id: 4, path: 'https://cdn.pixabay.com/photo/2017/10/09/19/29/eat-2834549_640.jpg', currentIndex: 0),
      ],
      address: '201 หมู่5 ต.วังตามัว อ.เมืองนครพนม จ.นครพนม 48000',
      lat: 17.4041485,
      lon: 103.7346118,
      qtyToSell: 5,
      startPriceRangeForSell: 50000,
      endPriceRangeForSell: 70000,
      contact: '0927043617',
      detail: 'เริ่มเก็บเกี่ยวได้วันที่ 32 ธ.ค. 2566',
    ),
    SellAnnouncementModel(
      id: 3,
      name: 'Farm ฮัก',
      profile: 'https://cdn.pixabay.com/photo/2017/10/09/19/29/eat-2834549_640.jpg',
      images: [
        SellAnnouncementImageModel(id: 1, path: 'https://cdn.pixabay.com/photo/2015/05/04/10/16/vegetables-752153_640.jpg', currentIndex: 0),
        SellAnnouncementImageModel(id: 2, path: 'https://cdn.pixabay.com/photo/2017/09/16/19/21/salad-2756467_640.jpg', currentIndex: 0),
        SellAnnouncementImageModel(id: 3, path: 'https://cdn.pixabay.com/photo/2017/10/09/19/29/eat-2834549_640.jpg', currentIndex: 0),
      ],
      address: '201 หมู่5 ต.วังตามัว อ.เมืองนครพนม จ.นครพนม 48000',
      lat: 17.4041485,
      lon: 103.7346118,
      qtyToSell: 5,
      startPriceRangeForSell: 50000,
      endPriceRangeForSell: 70000,
      contact: '0927043617',
      detail: 'เริ่มเก็บเกี่ยวได้วันที่ 32 ธ.ค. 2566',
    ),
    SellAnnouncementModel(
      id: 4,
      name: 'Farm ฮัก',
      profile: 'https://cdn.pixabay.com/photo/2017/10/09/19/29/eat-2834549_640.jpg',
      images: [
        SellAnnouncementImageModel(id: 1, path: 'https://cdn.pixabay.com/photo/2015/05/04/10/16/vegetables-752153_640.jpg', currentIndex: 0),
        SellAnnouncementImageModel(id: 2, path: 'https://cdn.pixabay.com/photo/2017/09/16/19/21/salad-2756467_640.jpg', currentIndex: 0),
        SellAnnouncementImageModel(id: 3, path: 'https://cdn.pixabay.com/photo/2017/10/09/19/29/eat-2834549_640.jpg', currentIndex: 0),
      ],
      address: '201 หมู่5 ต.วังตามัว อ.เมืองนครพนม จ.นครพนม 48000',
      lat: 17.4041485,
      lon: 103.7346118,
      qtyToSell: 5,
      startPriceRangeForSell: 50000,
      endPriceRangeForSell: 70000,
      contact: '0927043617',
      detail: 'เริ่มเก็บเกี่ยวได้วันที่ 32 ธ.ค. 2566',
    ),
  ];
}

class SellAnnouncementImageModel {
  int id;
  int currentIndex;
  String path;

  SellAnnouncementImageModel({
    required this.id,
    required this.path,
    required this.currentIndex,
  });

  // Setter methods for the fields
  void setId(int newId) {
    id = newId;
  }

  void setCurrentIndex(int newIndex) {
    currentIndex = newIndex;
  }

  void setPath(String newPath) {
    path = newPath;
  }
}

