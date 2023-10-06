
import 'Product.dart';
import 'Customer.dart';
import 'Supplier.dart';
class Purchase {
  Customer customer;
  Supplier supplier;
  Product product;
  int quantity;

  Purchase(this.customer, this.supplier, this.product, this.quantity);

  double getTotalAmount() {
    return product.price * quantity;
  }

  void processPurchase() {
    double totalAmount = getTotalAmount();
    customer.makePayment(totalAmount);
    supplier.receivePayment(totalAmount);
    print('Purchase of ${product.name} for $quantity units completed.');
  }
}