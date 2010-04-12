class Project < ActiveRecord::Base
  attr_accessible :name, :description, :company_id
end
