import 'package:dart_app/oop/database_example.dart';
import 'package:dart_app/oop/entity.dart';

enum GENDER { male, female, other }

class Profile extends Entity {
  String? profileImage;
  String? description;
  String? email;
  String userName;
  String dateOfBirth;
  GENDER? gender;

  Profile({
    this.profileImage,
    this.description,
    this.email,
    required this.userName,
    required this.dateOfBirth,
    required this.gender,
  });

  @override
  String toString() {
    return '{userName: $userName, email: $email, gender: $gender, dateOfBirth: $dateOfBirth}';
  }

  @override
  Map<String, dynamic> toMap() {
    final Map<dynamic, dynamic> value = {
      ...super.toMap(),
      'profileImage': profileImage,
      'description': description,
      'email': email,
      'userName': userName,
      'dateOfBirth': dateOfBirth,
      'gender': gender?.index,
    };

    final Map<String, dynamic> tmp =
        value.map((key, v) => MapEntry(key.toString(), v));

    return tmp;
  }

  factory Profile.fromMap(Map<String, dynamic> map) {
    return Profile(
      profileImage: map['profileImage'],
      description: map['description'],
      email: map['email'],
      userName: map['userName'],
      dateOfBirth: map['dateOfBirth'],
      gender: map['gender'] != null ? GENDER.values[map['gender']] : null,
    );
  }

  String get genderString {
    switch (gender?.index) {
      case 0:
        return "Male";
      case 1:
        return "Female";
      case 2:
        return "Other";
      default:
        return "Other";
    }
  }
}

void main(List<String> arguments) async {
  var db = DatabaseService<Profile>(
    tableName: 'profile',
    fromMap: Profile.fromMap,
  );

  final profile = Profile(
    userName: 'John Doe',
    dateOfBirth:
        '${DateTime.now().year}-${DateTime.now().month}-${DateTime.now().day}',
    gender: GENDER.male,
  );

  await db.init('database.db');
  await db.insert(profile);

  var profiles = await db.getAllAsJson();
  print(profiles);
}
