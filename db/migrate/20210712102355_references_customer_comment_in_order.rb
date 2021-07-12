class ReferencesCustomerCommentInOrder < ActiveRecord::Migration[6.1]
  def change
    add_reference(:spree_orders, :customer_comment)
  end
end
