import 'Person.dart';
class Customer extends person {
  late double balance;

  Customer(id, name, email, password, address,
      mobile) :super (id, name, email, password, address,
      mobile) {
    balance = 0;
  }

  void makePayment(double amount) {
    balance -= amount;
  }

}