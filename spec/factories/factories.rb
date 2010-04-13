require 'factory_girl'

Factory.define :user do |u|
  u.login 'bob'
  u.email 'bob@fzefze.fr'
  u.firstname 'bob'
  u.lastname 'bobson'
  u.phone '0601023454'
  u.role 'customer'
  u.password 'secret'
  u.password_confirmation 'secret'
end

Factory.define :admin, :class => User do |u|
  u.login 'admin'
  u.email 'admin@fzefze.fr'
  u.firstname 'ad'
  u.lastname 'min'
  u.phone '0601023454'
  u.role 'admin'
  u.password 'secret'
  u.password_confirmation 'secret'
end

Factory.define :customer, :class => User do |u|
  u.login 'bob'
  u.email 'bob@fzefze.fr'
  u.firstname 'bob'
  u.lastname 'bobson'
  u.phone '0601023454'
  u.role 'customer'
  u.password 'secret'
  u.password_confirmation 'secret'
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

Factory.define :managed, :class => :ticket do |t|
  t.title 'ezfqez error EZD'
  t.status 'open'
  t.text "dezsczdsvce e feirzoh zefcze zec qzec z"
end

Factory.define :project do |pr|
  pr.name 'deze'
  pr.description "acezq cezconqzevc"
end