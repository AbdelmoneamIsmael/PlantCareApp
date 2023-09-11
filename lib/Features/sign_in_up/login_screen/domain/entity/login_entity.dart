class UserInformation {
  final String name;
  final String email;
  final String password;
  final String adress;
  final String phone;
  final String imageProfile;
  final String bio;
  final String token;

  UserInformation(
      {required this.name,
      required this.password,
      required this.adress,
      required this.phone,
      required this.imageProfile,
      required this.bio,
      required this.email,
      required this.token});
}
