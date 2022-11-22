class UserModel {
    late String name;  late  String uid; late String imageUrl;
    late String email; late  String bio; late  String phone;
    late  String age; late String place; late String password;

  UserModel({
    required this.name, required this.email,
    required this.uid, required this.bio, required this.phone,
    required this.age, required this.place,
    required this.password, required this.imageUrl
  });

  Map<String,dynamic> toMap() {
    return {
      'uid':uid,
      'name':name,
      'email':email,
      'bio':bio,
      'phone':phone,
      'age':age,
      'place':place,
      'imageUrl':imageUrl,
      'password':password,
    };
  }

   UserModel.fromMap(Map<String,dynamic> userMap) {
     uid = userMap['uid'];
     name = userMap['name'];
     email = userMap['email'];
     bio = userMap['bio'];
     imageUrl = userMap['imageUrl'];
     password = userMap['password'];
     age = userMap['age'];
     place = userMap['place'];
     phone = userMap['phone'];
  }

}