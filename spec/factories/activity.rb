FactoryGirl.define do
  factory :activity do
    name { Faker::Name.name }
    photoUrl { Faker::Internet.url }
    link { Faker::Internet.url }
    lat { Faker::Address.latitude }
    long { Faker::Address.longitude }

    trait :with_categories do
      transient do
        number_of_categories 5
      end


      after(:create) do |activity, evaluator|
        create_list(:activity_categorization, evaluator.number_of_categories, activity: activity)
      end
    end
  end
end