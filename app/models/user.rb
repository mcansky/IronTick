class User < ActiveRecord::Base
  attr_accessible :login, :email, :phone, :company_id, :firstname, :lastname
  belongs_to :company
  has_many :managed_tickets, :class_name => "Ticket", :foreign_key => "owner_id"
  has_many :owned_tickets, :class_name => "Ticket", :foreign_key => "customer_id"
end
