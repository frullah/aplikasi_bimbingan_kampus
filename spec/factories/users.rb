FactoryBot.define do
  factory :user do
    sequence(:email) { |i| "user#{i}@gmail.com" }
    sequence(:username) { |i| "username#{i}" }
    sequence(:password) { |i| "password#{i}" }
    sequence(:name) { |i| "name#{i}" }
  end
end
