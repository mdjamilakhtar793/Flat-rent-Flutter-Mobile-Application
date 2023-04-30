class Models {
  String name;
  String address;
  String imageUrl;
  Models(this.name, this.address, this.imageUrl);
  static List<Models> genrateRecom() {
    return [
      Models('Asian Apartment', 'Mahabali Purram', 'assets/images/h1.jpeg'),
      Models('Akshya Bhawan', 'Kelambakkam Chennai', 'assets/images/h2.jpeg'),
      Models('PSN Paradis ', 'Urapakkam', 'assets/images/h3.jpeg'),
      Models('KPN Apartment', 'Gudvanchery', 'assets/images/h4.jpeg'),
      Models('Alisha Aliance', 'Tambaram senitoriam', 'assets/images/h5.jpeg'),
      Models('The Moon House', 'Ritchi Estate', 'assets/images/h6.jpeg'),
    ];
  }

  static List<Models> genrateGoodOffers() {
    return [
      Models('Asian Apartment', 'Mahabali Purram', 'assets/images/h1.jpeg'),
      Models('Akshya Bhawan', 'Kelambakkam Chennai', 'assets/images/h2.jpeg'),
      Models('PSN Paradis ', 'Urapakkam', 'assets/images/h3.jpeg'),
      Models('KPN Apartment', 'Gudvanchery', 'assets/images/h4.jpeg'),
      Models('Alisha Aliance', 'Tambaram senitoriam', 'assets/images/h5.jpeg'),
      Models('The Moon House', 'Ritchi Estate', 'assets/images/h6.jpeg'),
    ];
  }
}
