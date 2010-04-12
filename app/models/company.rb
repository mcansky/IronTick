class Company < ActiveRecord::Base
  attr_accessible :name, :description, :address
  has_many :users
  has_many :projects
end
