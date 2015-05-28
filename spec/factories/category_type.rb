FactoryGirl.define do
  factory :category_type do
  	name { Faker::Name.name }
  	
  	trait :with_categories do
      transient do
        number_of_categories 5
      end

      after(:create) do |category_type, evaluator|
        create_list(:category, evaluator.number_of_categories, category_type: category_type)
      end
    end

    trait :with_activities do
      transient do
        number_of_activities 5
      end

      after(:create) do |category_type, evaluator|
        create_list(:category_with_activities, evaluator.number_of_activities, category_type: category_type)
      end
    end
  end
end