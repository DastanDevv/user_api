class User {
  final String firstName;
  final String lastName;
  final String email;
  final String phone;
  final String picture;

  User({
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.phone,
    required this.picture,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      firstName: json['name']['first'],
      lastName: json['name']['last'],
      email: json['email'],
      phone: json['phone'],
      picture: json['picture']['thumbnail'],
    );
  }
}
