FactoryGirl.define do
  sequence(:name)  { |n| "Person #{n}" }
  sequence(:email) { |n| "person_#{n}@example.com"}

  factory :user do
    name { FactoryGirl.generate(:name) }
    email { FactoryGirl.generate(:email) }

    password "foobar"
    password_confirmation "foobar"

    factory :admin do
      admin true
    end
  end
end
