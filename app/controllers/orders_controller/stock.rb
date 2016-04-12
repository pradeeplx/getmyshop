class OrdersController
  class Stock

    def self.update(order)
      order.order_items.each do |order_item|
        product = Product.find(order_item.product_id)
        product.quantity -= order_item.quantity
        product.save
      end
    end

  end
end
