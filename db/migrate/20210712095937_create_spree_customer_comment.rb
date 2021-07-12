class CreateSpreeCustomerComment < ActiveRecord::Migration[6.1]
  def change
    create_table :spree_customer_comments do |t|
      t.references :order
      t.timestamps
      t.text :text
    end
  end
end
