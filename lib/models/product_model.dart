class ProductModel {
  final int id;
  final String title;
  final double price;
  final String description;
  final String image;
  final RatingModle rating;
  ProductModel({
    required this.id,
    required this.title,
    required this.price,
    required this.description,
    required this.image,
    required this.rating,
  });

  factory ProductModel.fromJson(jsonData) {
    return ProductModel(
      id: jsonData['id'],
      title: jsonData['title'],
      price: jsonData['price'],
      description: jsonData['description'],
      image: jsonData['image'],
      rating: RatingModle.fromJson(jsonData['rating']),
    );
  }
}

class RatingModle {
  final double rete;
  final int count;

  RatingModle({required this.rete, required this.count});

  factory RatingModle.fromJson(jsonData) {
    return RatingModle(rete: jsonData['rate'], count: jsonData['count']);
  }
}
