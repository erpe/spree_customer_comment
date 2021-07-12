module SpreeCustomerComment
  module Spree
    module OrderDecorator

      def self.prepended(base)

        ::Spree::PermittedAttributes.checkout_attributes.push [customer_comment_attributes: [:text]]

        base.has_one :customer_comment,
          class_name: 'Spree::CustomerComment',
          dependent: :destroy,
          autosave: true
        base.accepts_nested_attributes_for :customer_comment

        base.checkout_flow do
          go_to_state :address
          go_to_state :delivery
          go_to_state :customer_comment
          go_to_state :complete
        end
      end

      def customer_comment
        super || build_customer_comment
      end
    end
  end
end
::Spree::Order.prepend SpreeCustomerComment::Spree::OrderDecorator if ::Spree::Order.included_modules.exclude?(SpreeCustomerComment::Spree::OrderDecorator)

