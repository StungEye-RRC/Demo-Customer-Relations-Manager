class Customer < ActiveRecord::Base
  validates :full_name, presence: true
end
