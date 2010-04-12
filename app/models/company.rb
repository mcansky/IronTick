class Company < ActiveRecord::Base
  attr_accessible :name, :description, :address
end
