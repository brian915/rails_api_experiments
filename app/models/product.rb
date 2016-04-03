class Product < ActiveRecord::Base
  validates :title, :price, presence: true
end
