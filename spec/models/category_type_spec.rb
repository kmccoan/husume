require 'spec_helper'

describe CategoryType do
    let!(:category_type) { build(:category_type) }

    it 'instantiates a Category Type' do
      expect(category_type.class.name).to eq("CategoryType")
    end

    it "has a valid factory" do
      expect(create(:category_type)).to be_valid
    end

    it "is invalid without a name" do
      expect(build(:category_type, name: nil)).to_not be_valid
    end

    it "is associated with categories" do
      category_type = create(:category_type, :with_categories)
      expect(category_type.categories.length).to eq(5)
    end

    it "is associated with activities" do
      category_type = create(:category_type, :with_activities)
      expect(category_type.activities.length).to eq(25)
    end
end 