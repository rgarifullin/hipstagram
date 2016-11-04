FactoryGirl.define do
  password = FFaker::Internet.password

  factory :user do
    email FFaker::Internet.email
    nickname FFaker::Internet.user_name
    password password
    password_confirmation password
    confirmed_at Time.current
  end
end
