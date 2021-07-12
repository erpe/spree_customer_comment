module SpreeCustomerComment
  module Spree
    module Core
      module ControllerHelpers
        module StrongParametersDecorator
          def permitted_checkout_attributes
            permitted_attributes.checkout_attributes + [
              bill_address_attributes: permitted_address_attributes,
              ship_address_attributes: permitted_address_attributes,
              payments_attributes: permitted_payment_attributes,
              shipments_attributes: permitted_shipment_attributes,
              customer_comment_attributes: [:text]
            ]
          end
        end
      end
    end
  end
end

::Spree::CheckoutController.prepend SpreeCustomerComment::Spree::Core::ControllerHelpers::StrongParametersDecorator if ::Spree::CheckoutController.included_modules.exclude?(SpreeCustomerComment::Spree::Core::ControllerHelpers::StrongParametersDecorator)
