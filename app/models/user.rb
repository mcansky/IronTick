class User < ActiveRecord::Base
  attr_accessible :login, :email, :phone, :company_id
end
