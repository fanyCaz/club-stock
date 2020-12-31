class Product < ApplicationRecord
    #attributes are in schema.rb
    validates :name, presence: true, length: { minimum: 3 }
    validates :price, presence: true
    validates :quantity, presence: true
end