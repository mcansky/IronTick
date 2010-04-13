class User < ActiveRecord::Base
  attr_accessible :login, :email, :phone, :company_id, :firstname, :lastname
  acts_as_authentic
  belongs_to :company
  has_many :managed_tickets, :class_name => "Ticket", :foreign_key => "owner_id"
  has_many :owned_tickets, :class_name => "Ticket", :foreign_key => "customer_id"

  def is_admin?
    return true if role.to_sym == :admin
    return false
  end
  def self.find_by_login_or_email(login)
    find_by_login(login) || find_by_email(login)
  end
end
