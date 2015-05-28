require 'spec_helper'

describe Category do
    let!(:category) { build(:category) }

    it 'instantiates an Category' do
      expect(category.class.name).to eq("Category")
    end

    it "has a valid factory" do
      expect(create(:category)).to be_valid
    end

    it "is invalid without a name" do
      expect(build(:category, name: nil)).to_not be_valid
    end

    it "is invalid without a photo url" do
      expect(build(:category, photoUrl: nil)).to_not be_valid
    end

    it "belongs to a category type" do
  		category = create(:category)
  		expect(category.category_type).to_not be_nil
  	end
  
    it "is associated with activities" do
      category = create(:category_with_activities)
      expect(category.activities.length).to eq(5)
    end
end
