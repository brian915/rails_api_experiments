class Product < ActiveRecord::Base
  validates :title, :user_id, presence: true
  validates :price, numercality: { greater_than_or_equal_to: 0 },
            presence: true
end
