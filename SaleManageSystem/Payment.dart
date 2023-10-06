
import 'Customer.dart';


class Payment {
  Customer customer;
  double amount;

  Payment(this.customer, this.amount);


  void processPayment() {
    print('Payment of $amount received from ${customer.name}');
  }
}






