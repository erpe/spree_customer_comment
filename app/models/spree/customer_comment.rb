class Spree::CustomerComment < ActiveRecord::Base
  belongs_to :order
end
