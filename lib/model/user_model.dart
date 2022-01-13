class UserModel {
  String? uid;
  String? email;
  String? name;
  String? ruc;

  UserModel({this.uid,this.email,this.name,this.ruc});

//  receiving data from server

factory UserModel.fromMap(map){
  return UserModel(
    uid: map['uid'],
    email: map['email'],
    name: map['name'],
    ruc: map['ruc']
  );
}

// sending data to our server

Map<String,dynamic>toMap(){
  return {
    'uid': uid,
    'email': email,
    'name': name,
    'ruc': ruc,
  };
}
}