require 'factory_girl'

Factory.define :user do |u|
  u.login 'bob'
  u.email 'bob@fzefze.fr'
  u.firstname 'bob'
  u.lastname 'bobson'
end