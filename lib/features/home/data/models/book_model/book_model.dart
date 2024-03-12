class BookModel {
  String? kind;
  String? id;
  String? etag;
  String? selfLink;
  VolumeInfo? volumeInfo;
  SaleInfo? saleInfo;
  AccessInfo? accessInfo;
  SearchInfo? searchInfo;

  BookModel(
      {this.kind,
        this.id,
        this.etag,
        this.selfLink,
        this.volumeInfo,
        this.saleInfo,
        this.accessInfo,
        this.searchInfo});

  BookModel.fromJson(Map<String, dynamic> json) {
    kind = json['kind'];
    id = json['id'];
    etag = json['etag'];
    selfLink = json['selfLink'];
    volumeInfo = json['volumeInfo'] != null
        ? VolumeInfo.fromJson(json['volumeInfo'])
        : null;
    saleInfo = json['saleInfo'] != null
        ? SaleInfo.fromJson(json['saleInfo'])
        : null;
    accessInfo = json['accessInfo'] != null
        ? AccessInfo.fromJson(json['accessInfo'])
        : null;
    searchInfo = json['searchInfo'] != null
        ? SearchInfo.fromJson(json['searchInfo'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['kind'] = kind;
    data['id'] = id;
    data['etag'] = etag;
    data['selfLink'] = selfLink;
    if (volumeInfo != null) {
      data['volumeInfo'] = volumeInfo!.toJson();
    }
    if (saleInfo != null) {
      data['saleInfo'] = saleInfo!.toJson();
    }
    if (accessInfo != null) {
      data['accessInfo'] = accessInfo!.toJson();
    }
    if (searchInfo != null) {
      data['searchInfo'] = searchInfo!.toJson();
    }
    return data;
  }
}

class VolumeInfo {
  String? title;
  List<String>? authors;
  String? publisher;
  String? publishedDate;
  String? description;
  List<IndustryIdentifiers>? industryIdentifiers;
  ReadingModes? readingModes;
  int? pageCount;
  String? printType;
  List<String>? categories;
  String? maturityRating;
  bool? allowAnonLogging;
  String? contentVersion;
  PanelizationSummary? panelizationSummary;
  ImageLinks? imageLinks;
  String? language;
  String? previewLink;
  String? infoLink;
  String? canonicalVolumeLink;

  VolumeInfo(
      {this.title,
        this.authors,
        this.publisher,
        this.publishedDate,
        this.description,
        this.industryIdentifiers,
        this.readingModes,
        this.pageCount,
        this.printType,
        this.categories,
        this.maturityRating,
        this.allowAnonLogging,
        this.contentVersion,
        this.panelizationSummary,
        this.imageLinks,
        this.language,
        this.previewLink,
        this.infoLink,
        this.canonicalVolumeLink});

  VolumeInfo.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    authors = json['authors'].cast<String>();
    publisher = json['publisher'];
    publishedDate = json['publishedDate'];
    description = json['description'];
    if (json['industryIdentifiers'] != null) {
      industryIdentifiers = <IndustryIdentifiers>[];
      json['industryIdentifiers'].forEach((v) {
        industryIdentifiers!.add(IndustryIdentifiers.fromJson(v));
      });
    }
    readingModes = json['readingModes'] != null
        ? ReadingModes.fromJson(json['readingModes'])
        : null;
    pageCount = json['pageCount'];
    printType = json['printType'];
    categories = json['categories'].cast<String>();
    maturityRating = json['maturityRating'];
    allowAnonLogging = json['allowAnonLogging'];
    contentVersion = json['contentVersion'];
    panelizationSummary = json['panelizationSummary'] != null
        ? PanelizationSummary.fromJson(json['panelizationSummary'])
        : null;
    imageLinks = json['imageLinks'] != null
        ? ImageLinks.fromJson(json['imageLinks'])
        : null;
    language = json['language'];
    previewLink = json['previewLink'];
    infoLink = json['infoLink'];
    canonicalVolumeLink = json['canonicalVolumeLink'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['title'] = title;
    data['authors'] = authors;
    data['publisher'] = publisher;
    data['publishedDate'] = publishedDate;
    data['description'] = description;
    if (industryIdentifiers != null) {
      data['industryIdentifiers'] =
          industryIdentifiers!.map((v) => v.toJson()).toList();
    }
    if (readingModes != null) {
      data['readingModes'] = readingModes!.toJson();
    }
    data['pageCount'] = pageCount;
    data['printType'] = printType;
    data['categories'] = categories;
    data['maturityRating'] = maturityRating;
    data['allowAnonLogging'] = allowAnonLogging;
    data['contentVersion'] = contentVersion;
    if (panelizationSummary != null) {
      data['panelizationSummary'] = panelizationSummary!.toJson();
    }
    if (imageLinks != null) {
      data['imageLinks'] = imageLinks!.toJson();
    }
    data['language'] = language;
    data['previewLink'] = previewLink;
    data['infoLink'] = infoLink;
    data['canonicalVolumeLink'] = canonicalVolumeLink;
    return data;
  }
}

class IndustryIdentifiers {
  String? type;
  String? identifier;

  IndustryIdentifiers({this.type, this.identifier});

  IndustryIdentifiers.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    identifier = json['identifier'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['type'] = type;
    data['identifier'] = identifier;
    return data;
  }
}

class ReadingModes {
  bool? text;
  bool? image;

  ReadingModes({this.text, this.image});

  ReadingModes.fromJson(Map<String, dynamic> json) {
    text = json['text'];
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['text'] = text;
    data['image'] = image;
    return data;
  }
}

class PanelizationSummary {
  bool? containsEpubBubbles;
  bool? containsImageBubbles;

  PanelizationSummary({this.containsEpubBubbles, this.containsImageBubbles});

  PanelizationSummary.fromJson(Map<String, dynamic> json) {
    containsEpubBubbles = json['containsEpubBubbles'];
    containsImageBubbles = json['containsImageBubbles'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['containsEpubBubbles'] = containsEpubBubbles;
    data['containsImageBubbles'] = containsImageBubbles;
    return data;
  }
}

class ImageLinks {
  String? smallThumbnail;
  String? thumbnail;

  ImageLinks({this.smallThumbnail, this.thumbnail});

  ImageLinks.fromJson(Map<String, dynamic> json) {
    smallThumbnail = json['smallThumbnail'];
    thumbnail = json['thumbnail'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['smallThumbnail'] = smallThumbnail;
    data['thumbnail'] = thumbnail;
    return data;
  }
}

class SaleInfo {
  String? country;
  String? saleability;
  bool? isEbook;
  ListPrice? listPrice;
  ListPrice? retailPrice;
  String? buyLink;
  List<Offers>? offers;

  SaleInfo(
      {this.country,
        this.saleability,
        this.isEbook,
        this.listPrice,
        this.retailPrice,
        this.buyLink,
        this.offers});

  SaleInfo.fromJson(Map<String, dynamic> json) {
    country = json['country'];
    saleability = json['saleability'];
    isEbook = json['isEbook'];
    listPrice = json['listPrice'] != null
        ? ListPrice.fromJson(json['listPrice'])
        : null;
    retailPrice = json['retailPrice'] != null
        ? ListPrice.fromJson(json['retailPrice'])
        : null;
    buyLink = json['buyLink'];
    if (json['offers'] != null) {
      offers = <Offers>[];
      json['offers'].forEach((v) {
        offers!.add(Offers.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['country'] = country;
    data['saleability'] = saleability;
    data['isEbook'] = isEbook;
    if (listPrice != null) {
      data['listPrice'] = listPrice!.toJson();
    }
    if (retailPrice != null) {
      data['retailPrice'] = retailPrice!.toJson();
    }
    data['buyLink'] = buyLink;
    if (offers != null) {
      data['offers'] = offers!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class ListPrice {
  double? amount;
  String? currencyCode;

  ListPrice({this.amount, this.currencyCode});

  ListPrice.fromJson(Map<String, dynamic> json) {
    amount = json['amount'];
    currencyCode = json['currencyCode'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['amount'] = amount;
    data['currencyCode'] = currencyCode;
    return data;
  }
}

class Offers {
  int? finskyOfferType;
  ListPrice? listPrice;
  ListPrice? retailPrice;
  bool? giftable;

  Offers(
      {this.finskyOfferType, this.listPrice, this.retailPrice, this.giftable});

  Offers.fromJson(Map<String, dynamic> json) {
    finskyOfferType = json['finskyOfferType'];
    listPrice = json['listPrice'] != null
        ? ListPrice.fromJson(json['listPrice'])
        : null;
    retailPrice = json['retailPrice'] != null
        ? ListPrice.fromJson(json['retailPrice'])
        : null;
    giftable = json['giftable'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['finskyOfferType'] = finskyOfferType;
    if (listPrice != null) {
      data['listPrice'] = listPrice!.toJson();
    }
    if (retailPrice != null) {
      data['retailPrice'] = retailPrice!.toJson();
    }
    data['giftable'] = giftable;
    return data;
  }
}

class AccessInfo {
  String? country;
  String? viewability;
  bool? embeddable;
  bool? publicDomain;
  String? textToSpeechPermission;
  Epub? epub;
  Epub? pdf;
  String? webReaderLink;
  String? accessViewStatus;
  bool? quoteSharingAllowed;

  AccessInfo(
      {this.country,
        this.viewability,
        this.embeddable,
        this.publicDomain,
        this.textToSpeechPermission,
        this.epub,
        this.pdf,
        this.webReaderLink,
        this.accessViewStatus,
        this.quoteSharingAllowed});

  AccessInfo.fromJson(Map<String, dynamic> json) {
    country = json['country'];
    viewability = json['viewability'];
    embeddable = json['embeddable'];
    publicDomain = json['publicDomain'];
    textToSpeechPermission = json['textToSpeechPermission'];
    epub = json['epub'] != null ? Epub.fromJson(json['epub']) : null;
    pdf = json['pdf'] != null ? Epub.fromJson(json['pdf']) : null;
    webReaderLink = json['webReaderLink'];
    accessViewStatus = json['accessViewStatus'];
    quoteSharingAllowed = json['quoteSharingAllowed'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['country'] = country;
    data['viewability'] = viewability;
    data['embeddable'] = embeddable;
    data['publicDomain'] = publicDomain;
    data['textToSpeechPermission'] = textToSpeechPermission;
    if (epub != null) {
      data['epub'] = epub!.toJson();
    }
    if (pdf != null) {
      data['pdf'] = pdf!.toJson();
    }
    data['webReaderLink'] = webReaderLink;
    data['accessViewStatus'] = accessViewStatus;
    data['quoteSharingAllowed'] = quoteSharingAllowed;
    return data;
  }
}

class Epub {
  bool? isAvailable;

  Epub({this.isAvailable});

  Epub.fromJson(Map<String, dynamic> json) {
    isAvailable = json['isAvailable'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['isAvailable'] = isAvailable;
    return data;
  }
}

class SearchInfo {
  String? textSnippet;

  SearchInfo({this.textSnippet});

  SearchInfo.fromJson(Map<String, dynamic> json) {
    textSnippet = json['textSnippet'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['textSnippet'] = textSnippet;
    return data;
  }
}














// class BookModel {
//   late String kind;
//   late int totalItems;
//   late List<Items> items;
//
//   BookModel(
//       {required this.kind, required this.totalItems, required this.items});
//
//   BookModel.fromJson(Map<String, dynamic> json) {
//     kind = json['kind'];
//     totalItems = json['totalItems'];
//     if (json['items'] != null) {
//       items = <Items>[];
//       json['items'].forEach((v) {
//         items.add(Items.fromJson(v));
//       });
//     }
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['kind'] = kind;
//     data['totalItems'] = totalItems;
//     data['items'] = items.map((v) => v.toJson()).toList();
//     return data;
//   }
// }
//
// class Items {
//   late String kind;
//   late String id;
//   late String etag;
//   late String selfLink;
//   late VolumeInfo volumeInfo;
//   late SaleInfo saleInfo;
//   late AccessInfo accessInfo;
//   late SearchInfo searchInfo;
//
//   Items(
//       {required this.kind,
//       required this.id,
//       required this.etag,
//       required this.selfLink,
//       required this.volumeInfo,
//       required this.saleInfo,
//       required this.accessInfo,
//       required this.searchInfo});
//
//   Items.fromJson(Map<String, dynamic> json) {
//     kind = json['kind'];
//     id = json['id'];
//     etag = json['etag'];
//     selfLink = json['selfLink'];
//     volumeInfo = (json['volumeInfo'] != null
//         ? VolumeInfo.fromJson(json['volumeInfo'])
//         : null)!;
//     saleInfo =
//         (json['saleInfo'] != null ? SaleInfo.fromJson(json['saleInfo']) : null)!;
//     accessInfo = (json['accessInfo'] != null
//         ? AccessInfo.fromJson(json['accessInfo'])
//         : null)!;
//     searchInfo = (json['searchInfo'] != null
//         ? SearchInfo.fromJson(json['searchInfo'])
//         : null)!;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['kind'] = kind;
//     data['id'] = id;
//     data['etag'] = etag;
//     data['selfLink'] = selfLink;
//     data['volumeInfo'] = volumeInfo.toJson();
//     data['saleInfo'] = saleInfo.toJson();
//     data['accessInfo'] = accessInfo.toJson();
//     data['searchInfo'] = searchInfo.toJson();
//       return data;
//   }
// }
//
// class VolumeInfo {
//   late String title;
//   late List<String> authors;
//   late String publisher;
//   late String publishedDate;
//   late String description;
//   late List<IndustryIdentifiers> industryIdentifiers;
//   late ReadingModes readingModes;
//   late int pageCount;
//   late String printType;
//   late List<String> categories;
//   late String maturityRating;
//   late bool allowAnonLogging;
//   late String contentVersion;
//   late PanelizationSummary panelizationSummary;
//   late ImageLinks imageLinks;
//   late String language;
//   late String previewLink;
//   late String infoLink;
//   late String canonicalVolumeLink;
//   late int averageRating;
//   late int ratingsCount;
//   late String subtitle;
//
//   VolumeInfo(
//       {required this.title,
//       required this.authors,
//       required this.publisher,
//       required this.publishedDate,
//       required this.description,
//       required this.industryIdentifiers,
//       required this.readingModes,
//       required this.pageCount,
//       required this.printType,
//       required this.categories,
//       required this.maturityRating,
//       required this.allowAnonLogging,
//       required this.contentVersion,
//       required this.panelizationSummary,
//       required this.imageLinks,
//       required this.language,
//       required this.previewLink,
//       required this.infoLink,
//       required this.canonicalVolumeLink,
//       required this.averageRating,
//       required this.ratingsCount,
//       required this.subtitle});
//
//   VolumeInfo.fromJson(Map<String, dynamic> json) {
//     title = json['title'];
//     authors = json['authors'].cast<String>();
//     publisher = json['publisher'];
//     publishedDate = json['publishedDate'];
//     description = json['description'];
//     if (json['industryIdentifiers'] != null) {
//       industryIdentifiers = <IndustryIdentifiers>[];
//       json['industryIdentifiers'].forEach((v) {
//         industryIdentifiers.add(IndustryIdentifiers.fromJson(v));
//       });
//     }
//     readingModes = (json['readingModes'] != null
//         ? ReadingModes.fromJson(json['readingModes'])
//         : null)!;
//     pageCount = json['pageCount'];
//     printType = json['printType'];
//     categories = json['categories'].cast<String>();
//     maturityRating = json['maturityRating'];
//     allowAnonLogging = json['allowAnonLogging'];
//     contentVersion = json['contentVersion'];
//     panelizationSummary = (json['panelizationSummary'] != null
//         ? PanelizationSummary.fromJson(json['panelizationSummary'])
//         : null)!;
//     imageLinks = (json['imageLinks'] != null
//         ? ImageLinks.fromJson(json['imageLinks'])
//         : null)!;
//     language = json['language'];
//     previewLink = json['previewLink'];
//     infoLink = json['infoLink'];
//     canonicalVolumeLink = json['canonicalVolumeLink'];
//     averageRating = json['averageRating'];
//     ratingsCount = json['ratingsCount'];
//     subtitle = json['subtitle'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['title'] = title;
//     data['authors'] = authors;
//     data['publisher'] = publisher;
//     data['publishedDate'] = publishedDate;
//     data['description'] = description;
//     data['industryIdentifiers'] =
//         industryIdentifiers.map((v) => v.toJson()).toList();
//     data['readingModes'] = readingModes.toJson();
//       data['pageCount'] = pageCount;
//     data['printType'] = printType;
//     data['categories'] = categories;
//     data['maturityRating'] = maturityRating;
//     data['allowAnonLogging'] = allowAnonLogging;
//     data['contentVersion'] = contentVersion;
//     data['panelizationSummary'] = panelizationSummary.toJson();
//     data['imageLinks'] = imageLinks.toJson();
//       data['language'] = language;
//     data['previewLink'] = previewLink;
//     data['infoLink'] = infoLink;
//     data['canonicalVolumeLink'] = canonicalVolumeLink;
//     data['averageRating'] = averageRating;
//     data['ratingsCount'] = ratingsCount;
//     data['subtitle'] = subtitle;
//     return data;
//   }
// }
//
// class IndustryIdentifiers {
//   String? type;
//   String? identifier;
//
//   IndustryIdentifiers({this.type, this.identifier});
//
//   IndustryIdentifiers.fromJson(Map<String, dynamic> json) {
//     type = json['type'];
//     identifier = json['identifier'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['type'] = type;
//     data['identifier'] = identifier;
//     return data;
//   }
// }
//
// class ReadingModes {
//   bool? text;
//   bool? image;
//
//   ReadingModes({this.text, this.image});
//
//   ReadingModes.fromJson(Map<String, dynamic> json) {
//     text = json['text'];
//     image = json['image'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['text'] = text;
//     data['image'] = image;
//     return data;
//   }
// }
//
// class PanelizationSummary {
//   bool? containsEpubBubbles;
//   bool? containsImageBubbles;
//
//   PanelizationSummary({this.containsEpubBubbles, this.containsImageBubbles});
//
//   PanelizationSummary.fromJson(Map<String, dynamic> json) {
//     containsEpubBubbles = json['containsEpubBubbles'];
//     containsImageBubbles = json['containsImageBubbles'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['containsEpubBubbles'] = containsEpubBubbles;
//     data['containsImageBubbles'] = containsImageBubbles;
//     return data;
//   }
// }
//
// class ImageLinks {
//   late String smallThumbnail;
//   late String thumbnail;
//
//   ImageLinks({required this.smallThumbnail, required this.thumbnail});
//
//   ImageLinks.fromJson(Map<String, dynamic> json) {
//     smallThumbnail = json['smallThumbnail'];
//     thumbnail = json['thumbnail'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['smallThumbnail'] = smallThumbnail;
//     data['thumbnail'] = thumbnail;
//     return data;
//   }
// }
//
// class SaleInfo {
//   String? country;
//   String? saleability;
//   bool? isEbook;
//   ListPrice? listPrice;
//   ListPrice? retailPrice;
//   String? buyLink;
//   List<Offers>? offers;
//
//   SaleInfo(
//       {this.country,
//       this.saleability,
//       this.isEbook,
//       this.listPrice,
//       this.retailPrice,
//       this.buyLink,
//       this.offers});
//
//   SaleInfo.fromJson(Map<String, dynamic> json) {
//     country = json['country'];
//     saleability = json['saleability'];
//     isEbook = json['isEbook'];
//     listPrice = json['listPrice'] != null
//         ? ListPrice.fromJson(json['listPrice'])
//         : null;
//     retailPrice = json['retailPrice'] != null
//         ? ListPrice.fromJson(json['retailPrice'])
//         : null;
//     buyLink = json['buyLink'];
//     if (json['offers'] != null) {
//       offers = <Offers>[];
//       json['offers'].forEach((v) {
//         offers!.add(Offers.fromJson(v));
//       });
//     }
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['country'] = country;
//     data['saleability'] = saleability;
//     data['isEbook'] = isEbook;
//     if (listPrice != null) {
//       data['listPrice'] = listPrice!.toJson();
//     }
//     if (retailPrice != null) {
//       data['retailPrice'] = retailPrice!.toJson();
//     }
//     data['buyLink'] = buyLink;
//     if (offers != null) {
//       data['offers'] = offers!.map((v) => v.toJson()).toList();
//     }
//     return data;
//   }
// }
//
// class ListPrice {
//   double? amount;
//   String? currencyCode;
//
//   ListPrice({this.amount, this.currencyCode});
//
//   ListPrice.fromJson(Map<String, dynamic> json) {
//     amount = json['amount'];
//     currencyCode = json['currencyCode'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['amount'] = amount;
//     data['currencyCode'] = currencyCode;
//     return data;
//   }
// }
//
// class Offers {
//   int? finskyOfferType;
//   ListPrice? listPrice;
//   ListPrice? retailPrice;
//   bool? giftable;
//
//   Offers(
//       {this.finskyOfferType, this.listPrice, this.retailPrice, this.giftable});
//
//   Offers.fromJson(Map<String, dynamic> json) {
//     finskyOfferType = json['finskyOfferType'];
//     listPrice = json['listPrice'] != null
//         ? ListPrice.fromJson(json['listPrice'])
//         : null;
//     retailPrice = json['retailPrice'] != null
//         ? ListPrice.fromJson(json['retailPrice'])
//         : null;
//     giftable = json['giftable'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['finskyOfferType'] = finskyOfferType;
//     if (listPrice != null) {
//       data['listPrice'] = listPrice!.toJson();
//     }
//     if (retailPrice != null) {
//       data['retailPrice'] = retailPrice!.toJson();
//     }
//     data['giftable'] = giftable;
//     return data;
//   }
// }
//
// class AccessInfo {
//   String? country;
//   String? viewability;
//   bool? embeddable;
//   bool? publicDomain;
//   String? textToSpeechPermission;
//   Epub? epub;
//   Epub? pdf;
//   String? webReaderLink;
//   String? accessViewStatus;
//   bool? quoteSharingAllowed;
//
//   AccessInfo(
//       {this.country,
//       this.viewability,
//       this.embeddable,
//       this.publicDomain,
//       this.textToSpeechPermission,
//       this.epub,
//       this.pdf,
//       this.webReaderLink,
//       this.accessViewStatus,
//       this.quoteSharingAllowed});
//
//   AccessInfo.fromJson(Map<String, dynamic> json) {
//     country = json['country'];
//     viewability = json['viewability'];
//     embeddable = json['embeddable'];
//     publicDomain = json['publicDomain'];
//     textToSpeechPermission = json['textToSpeechPermission'];
//     epub = json['epub'] != null ? Epub.fromJson(json['epub']) : null;
//     pdf = json['pdf'] != null ? Epub.fromJson(json['pdf']) : null;
//     webReaderLink = json['webReaderLink'];
//     accessViewStatus = json['accessViewStatus'];
//     quoteSharingAllowed = json['quoteSharingAllowed'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['country'] = country;
//     data['viewability'] = viewability;
//     data['embeddable'] = embeddable;
//     data['publicDomain'] = publicDomain;
//     data['textToSpeechPermission'] = textToSpeechPermission;
//     if (epub != null) {
//       data['epub'] = epub!.toJson();
//     }
//     if (pdf != null) {
//       data['pdf'] = pdf!.toJson();
//     }
//     data['webReaderLink'] = webReaderLink;
//     data['accessViewStatus'] = accessViewStatus;
//     data['quoteSharingAllowed'] = quoteSharingAllowed;
//     return data;
//   }
// }
//
// class Epub {
//   bool? isAvailable;
//   String? acsTokenLink;
//
//   Epub({this.isAvailable, this.acsTokenLink});
//
//   Epub.fromJson(Map<String, dynamic> json) {
//     isAvailable = json['isAvailable'];
//     acsTokenLink = json['acsTokenLink'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['isAvailable'] = isAvailable;
//     data['acsTokenLink'] = acsTokenLink;
//     return data;
//   }
// }
//
// class Pdf {
//   bool? isAvailable;
//   String? acsTokenLink;
//
//   Pdf({this.isAvailable, this.acsTokenLink});
//
//   Pdf.fromJson(Map<String, dynamic> json) {
//     Pdf(
//       isAvailable: json['isAvailable'],
//       acsTokenLink: json['acsTokenLink'],
//     );
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['isAvailable'] = isAvailable;
//     data['acsTokenLink'] = acsTokenLink;
//     return data;
//   }
// }
//
// class SearchInfo {
//   String? textSnippet;
//
//   SearchInfo({this.textSnippet});
//
//   SearchInfo.fromJson(Map<String, dynamic> json) {
//     textSnippet = json['textSnippet'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['textSnippet'] = textSnippet;
//     return data;
//   }
// }
