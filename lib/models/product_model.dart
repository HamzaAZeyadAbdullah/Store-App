// ignore_for_file: public_member_api_docs, sort_constructors_first
class ProductModel {
  final dynamic id;
  final String tiltle;
  final dynamic price;
  final String description;
  final String image;
  final String category;
  final RatingModel? rating;

  ProductModel({
    required this.id,
    required this.tiltle,
    required this.price,
    required this.description,
    required this.image,
    required this.category,
    required this.rating,
  });

  factory ProductModel.fromeJson(jsondata) {
    return ProductModel(
        id: jsondata['id'],
        tiltle: jsondata['title'],
        price: jsondata['price'],
        description: jsondata['description'],
        image: jsondata['image'],
        category: jsondata['category'],
        rating: jsondata['rating'] == null
            ? null
            : RatingModel.fromJson(jsondata['rating']));
  }
}

class RatingModel {
  final dynamic rate;
  final int count;
  RatingModel({
    required this.rate,
    required this.count,
  });

  factory RatingModel.fromJson(jsondata) {
    return RatingModel(
      rate: jsondata['rate'],
      count: jsondata['count'],
    );
  }
}
