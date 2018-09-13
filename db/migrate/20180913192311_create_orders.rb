class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.text :address
      t.text :instruction

      t.timestamps
    end
  end
end
