class User < ApplicationRecord
    has_many :carts
    has_many :items, through: :carts
    has_many :orders
    has_secure_password
end
