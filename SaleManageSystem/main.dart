 import 'Customer.dart';
import 'Payment.dart';
import 'Product.dart';
import 'Purchase.dart';
import 'Supplier.dart';

 void main() {  var customers = <Customer>[];

 var customer1 = Customer(
   3031122880233,
   'ALI',
   'Ali112@mail.com',
   '123456789',
   'cairo',
   123456789012,
 );
 customers.add(customer1);

 var customer2 = Customer(
   3031122880234,
   'John',
   'john@gmail.com',
   '987654321',
   'New York',
   987654321098,
 );
 customers.add(customer2);

 for (var customer in customers) {
   print('Name: ${customer.name}');
   print('Email: ${customer.email}');
   print('Password: ${customer.password}');
   print('Address: ${customer.address}');
   print('Mobile: ${customer.mobile}');
   print('-------------------------');
 };

   var supplier1 = Supplier(
       3031122880233, 'Sema', 'Sema112@mail.com', '123456789', 'cairo', 123456789012);

   var product1 = Product('Mobile', 1000.0);
 var product2 = Product('tablet', 1500.0);

   var purchase1 = Purchase(customer1, supplier1, product1, 5);
   purchase1.processPurchase();

   var payment1 = Payment(customer1, 200.0);
   payment1.processPayment();
 var purchase2 = Purchase(customer2, supplier1, product2, 10);
 purchase2.processPurchase();

 var payment2 = Payment(customer2, 200.0);
 payment2.processPayment();
 }