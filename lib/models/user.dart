class User{
  String userName;
  String email;
  String password;
  User({
    this.userName='',
    this.email='',
    this.password=''
  });

  Map<String, dynamic> toMap() {
    return {
      'userName': userName,
      'email':email,
      'password':password
    };
  }

  // Implement toString to make it easier to see information about
  // each dog when using the print statement.
  @override
  String toString() {
    return 'User{userName: $userName, email:$email ,password:$password}';
  }
}