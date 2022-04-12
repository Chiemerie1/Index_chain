


class CoinData {
 final String name;
  final double price;

  CoinData({required this.name, required this.price});

  Map<String, dynamic> toMap() {
    return {
      "name": name,
      "price": price,
    };
  }

}