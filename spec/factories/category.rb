FactoryGirl.define do
  factory :category do
  	name { Faker::Name.name }
  	photoUrl { Faker::Internet.url }
  	category_type
	
	factory :category_with_activities do
      transient do
        number_of_activities 5
      end

      after(:create) do |category, evaluator|
        create_list(:activity_categorization, evaluator.number_of_activities, category: category)
      end
    end
  end
end