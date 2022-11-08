class BookModel {
  final String id;
  final String name;
  final int price;

  BookModel(this.id, this.name, this.price);

  @override
  bool operator ==(covariant BookModel other) {
    if (identical(this, other)) return true;

    return other.id == id && other.name == name && other.price == price;
  }

  @override
  int get hashCode => id.hashCode ^ name.hashCode ^ price.hashCode;

  BookModel copyWith({
    String? id,
    String? name,
    int? price,
  }) {
    return BookModel(
      id ?? this.id,
      name ?? this.name,
      price ?? this.price,
    );
  }
}
