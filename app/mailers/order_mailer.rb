class OrderMailer < ApplicationMailer
  def notify_order_placed(order)
    @order = order
    @user  = order.user
    @product_lists = @order.product_lists

    mail(to: @user.email , subject: "[OnePlusJDstore] Thank you for your order, complete the following is your shopping details this time #{order.token}")
  end

  def apply_cancel(order)
    @order       = order
    @user        = order.user
    @product_lists = @order.product_lists

    mail(to: "admin@test.com" , subject: "[OnePlusJDstore] User#{order.user.email}apply to cancel #{order.token}")
  end

end
