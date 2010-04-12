class Ticket < ActiveRecord::Base
  attr_accessible :title, :status, :text, :owner_id, :project_id, :customer_id, :created_at
  belongs_to :manager, :class_name => "User", :foreign_key => "owner_id"
  belongs_to :customer, :class_name => "User", :foreign_key => "customer_id"
  belongs_to :project
end
