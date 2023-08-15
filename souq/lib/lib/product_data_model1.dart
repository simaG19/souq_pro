class ProductDataModel1 {
  int? id;
  String? name;
  String? category;
  String? status;
  String? imageURL;
  String? oldPrice;
  String? price;
  String? coin;

  ProductDataModel1({
    this.id,
    this.name,
    this.category,
    this.status,
    this.imageURL,
    this.oldPrice,
    this.price,
    this.coin,
  });

  factory ProductDataModel1.fromJson(Map<String, dynamic> json) {
    return ProductDataModel1(
      id: json['id'],
      name: json['name'],
      category: json['category'],
      status: json['status'],
      imageURL: json['imageUrl'],
      oldPrice: json['oldPrice'],
      price: json['price'],
      coin: json['coin'],
    );
  }
}
