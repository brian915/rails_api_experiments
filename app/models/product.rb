class Product < ActiveRecord::Base
  validates :title, presence: true
  validates :price, numercality: { greater_than_or_equal_to: 0 },
            presence: true
end
