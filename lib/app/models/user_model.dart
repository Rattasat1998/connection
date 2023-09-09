class UserModel {
  final int userId;
  final String cover;
  final String username;
  final String profile;
  final String address;
  final double lat;
  final double lon;
  final String follower;
  final String description;
  final String role;





  UserModel(
      {
        required this.userId,
        required this.cover,
      required this.profile,
      required this.username,
      required this.address,
      required this.lat,
      required this.lon,
      required this.follower,
      required this.description,
      required this.role,
      });

}
