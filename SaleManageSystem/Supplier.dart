import 'Person.dart';
class Supplier extends person{
    late double balance;
  Supplier(id, name, email, password, address,
      mobile):super (id, name, email, password, address,
      mobile) {balance=0;}
  void receivePayment(double amount) {
    balance += amount;
    print('Payment of $amount made to $name');
  }

}


