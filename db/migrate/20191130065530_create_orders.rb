class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.integer(:user_id)
      t.string(:email)
      t.string(:fullName)
      t.string(:address)
      t.string(:city)
      t.string(:state)
      t.string(:zipcode)
      t.string(:phone)
      t.string(:country)
      t.text(:items)
      t.boolean(:complete)
    end
  end
end
