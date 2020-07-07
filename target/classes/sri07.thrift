namespace java edu.pja.sri.lab07

struct Product{
    1: required i32 id,
	2: required string name,
	3: required i32 amountInStock,
	5: required double price
}


exception ProductNotAvaiable {
  1: string msg
}

service ProductCart{
	list<Product> getAllProducts();
	list<OrderItem> showProductInCartList(),
	void addItem(1:Product product, 2: i32 amount),
	void removeProduct(1:Product product),
	void changeSelectedProductAmount(1:Product product, 2: i32 newAmount),
	void placeOrder() throws (1:ProductNotAvaiable orderException)
}     

struct OrderItem{
	1: required Product product;
	2: required i32 amount;
}
