class Order < ApplicationRecord
    serialize :items, Array
    belongs_to :user
end