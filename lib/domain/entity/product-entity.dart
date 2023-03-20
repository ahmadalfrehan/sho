class ProductEntity {
  String? title;
  String? description;
  String? image;
  int? rate;
  String? price;
  String? rateV;

  ProductEntity.empty();
  ProductEntity({
    required this.title,
    required this.description,
    required this.image,
    required this.rate,
    required this.price,
    required this.rateV,
  });
}
