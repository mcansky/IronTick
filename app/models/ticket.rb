class Ticket < ActiveRecord::Base
  attr_accessible :title, :status, :text, :owner_id, :project_id, :customer_id, :created_at
end
