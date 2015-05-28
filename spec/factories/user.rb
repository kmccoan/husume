FactoryGirl.define do
  factory :user do
    login 'admin'
    password 'password'
    password_confirmation 'password'
  end
end
