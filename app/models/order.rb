class Order < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  after_create :check_number_of_purchases

  def check_number_of_purchases
    if (self.user.orders.count == 5)
      # call the background job
    end
  end
end
