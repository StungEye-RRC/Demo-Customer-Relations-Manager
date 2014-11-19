class Customer < ActiveRecord::Base
  belongs_to :province
  
  validates :full_name, presence: true
end
