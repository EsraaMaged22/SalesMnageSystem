 abstract class person {
   int? _id;
   String name;
   String _email;
   String _password;
   String _address;
   int _mobile;


   person(this._id, this.name, this._email, this._password, this._address,
       this._mobile);

   set id(int value) {
     if (value
         .toString()
         .length == 14) {
       _id = value;
     }
     else {
       throw Exception("Invalid id");
     }
   }

   String get email => _email;

   set email(String value) {
     final bool emailValid = RegExp(
       r"^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$",
     ).hasMatch(value);

     if (emailValid) {
       _email = value;
     } else {
       throw Exception('Invalid email');
     }
   }

   int get mobile => _mobile;

   set mobile(int value) {
     _mobile = value;
     if (value
         .toString()
         .length == 12) {
       _mobile = value;
     }
     else {
       throw Exception("Invalid mobile number");
     }
   }

   String get address => _address;

   set address(String value) {
     _address = value;
   }

   String get password => _password;

   set password(String value) {
     _password = value;
     if (value
         .length == 12) {
       password = value;
     }
     else if (value
         .length < 8) {
       throw Exception("password must be more than 8 letters");
     }
     else {
       throw Exception("password must be less than 12 letters");
     }
   }
 }

