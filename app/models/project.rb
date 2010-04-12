class Project < ActiveRecord::Base
  attr_accessible :name, :description, :company_id
  has_many :tickets
  belongs_to :company
end
