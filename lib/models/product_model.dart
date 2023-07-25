class ProductModel {
  final int id;
  final String title;
  final dynamic price;
  final String description;
  final String image;
  final RatingModle? rating;
  final String category;

  ProductModel({
    required this.id,
    required this.title,
    required this.category,
    required this.price,
    required this.description,
    required this.image,
    required this.rating,
  });

  factory ProductModel.fromJson(jsonData) {
    return ProductModel(
        id: jsonData['id'],
        title: jsonData['title'],
        category: jsonData['category'],
        price: jsonData['price'],
        description: jsonData['description'],
        image: jsonData['image'],
        rating: jsonData['rating'] == null
            ? null
            : RatingModle.fromJson(jsonData['rating']));
  }
}

class RatingModle {
  final dynamic rate;
  final int count;

  RatingModle({required this.rate, required this.count});

  factory RatingModle.fromJson(jsonData) {
    return RatingModle(rate: jsonData['rate'], count: jsonData['count']);
  }
}
