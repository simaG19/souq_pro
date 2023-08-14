class ProductDataModel2 {
  int? id;
  String? name;
  String? category;
  String? status;
  String? imageURL;
  String? oldPrice;
  String? price;

  ProductDataModel2({
    this.id,
    this.name,
    this.category,
    this.status,
    this.imageURL,
    this.oldPrice,
    this.price,
  });

  factory ProductDataModel2.fromJson(Map<String, dynamic> json) {
    return ProductDataModel2(
      id: json['id'],
      name: json['name'],
      category: json['category'],
      status: json['status'],
      imageURL: json['imageUrl'],
      oldPrice: json['oldPrice'],
      price: json['price'],
    );
  }
}
