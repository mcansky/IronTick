require 'factory_girl'

Factory.define :user do |u|
  u.login 'bob'
  u.email 'bob@fzefze.fr'
  u.firstname 'bob'
  u.lastname 'bobson'
  u.phone '0601023454'
end

Factory.define :admin, :class => User do |u|
  u.login 'admin'
  u.email 'admin@fzefze.fr'
  u.firstname 'ad'
  u.lastname 'min'
  u.phone '0601023454'
end

Factory.define :company do |c|
  c.name 'bob corp'
  c.description "acdze zefqze zef"
  c.address "adz zadazd ezfze"
end

Factory.define :ticket do |t|
  t.title 'error EZD'
  t.status 'open'
  t.text "dezsce feirzoh zefcze zec qzec z"
end

Factory.define :project do |pr|
  pr.name 'deze'
  pr.description "acezq cezconqzevc"
end