#module SpreeCustomerComment
#  module Spree
#    module BaseControllerDecorator
#      def self.prepended(base)
#        @@checkout_attributes = [
#          :email,
#          :use_billing,
#          :shipping_method_id,
#          :coupon_code,
#          :customer_comment_attributes
#        ]
#      end
#    end
#  end
#end
#
##::Spree::BaseController.prepend SpreeCustomerComment::Spree::BaseControllerDecorator if ::Spree::BaseController.included_modules.exclude?(SpreeCustomerComment::Spree::BaseControllerDecorator)
