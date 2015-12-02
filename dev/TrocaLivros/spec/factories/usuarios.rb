require "faker"

FactoryGirl.define do
  factory :usuario do |f|
    f.nome  { Faker::Name.name }
    f.email { Faker::Internet.email }
    f.senha { Faker::Internet.password }
  end
end
