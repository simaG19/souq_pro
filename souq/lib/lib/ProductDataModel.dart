class ProductDataModel {
  int? id;
  String? name;
  String? catagory;
  String? imageURL;
  String? oldPrice;
  String? price;

  ProductDataModel(
      {this.id,
      this.name,
      this.catagory,
      this.imageURL,
      this.oldPrice,
      this.price});
  ProductDataModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    catagory = json['catagory'];
    imageURL = json['imageURL'];
    oldPrice = json['oldPrice'];
    price = json['price'];
  }
}
