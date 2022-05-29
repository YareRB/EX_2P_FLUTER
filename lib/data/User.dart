class User{
  String? username;
  String? password;
  String? fullname;
  String? mail;

  User(
    this.username,
    this.password,
    this.fullname,
    this.mail
  );

  static User usuario = User('Yare','123','Yareli Ramírez', 'yareram78@gmail.com');
}

