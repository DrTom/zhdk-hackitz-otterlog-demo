# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :otterlog do
    name { Faker::Name.first_name}
    id { SecureRandom.uuid }
  end
end
