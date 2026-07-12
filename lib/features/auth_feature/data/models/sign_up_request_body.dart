class SignUpRequestBody {
    final String name;
  final String email;
  final String password;
  final String phone;
  final int gender;

  final String passwordConfirmation;

  SignUpRequestBody({required this.name, required this.email, required this.password, required this.phone, required this.gender, required this.passwordConfirmation});

 tojson(){
  return {
"name":name,
"email":email,
"password":password,
"gender":gender,
"phone":phone,
"password_confirmation":passwordConfirmation
  };
}
}