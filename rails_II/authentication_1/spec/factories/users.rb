FactoryGirl.define do
  factory :user do
    first_name "Oscar"
    last_name "Vazquez"
    email "oscar@gmail.com"
    password "password"
    password_confirmation "password"
  end
end
