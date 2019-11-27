class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string(:name)
      t.string(:image)
      t.float(:price)
    end
  end
end
