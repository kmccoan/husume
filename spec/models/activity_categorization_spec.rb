require 'spec_helper'

describe ActivityCategorization do
  describe 'instantiation' do
    let!(:activity_categorization) { build(:activity_categorization) }

    it 'instantiates an Activity Categorization' do
      expect(activity_categorization.class.name).to eq("ActivityCategorization")
    end

    it "belongs to a category" do
		activity_categorization = create(:activity_categorization)
		expect(activity_categorization.category).to_not be_nil
	end
    it "belongs to an activity" do
		activity_categorization = create(:activity_categorization)
		expect(activity_categorization.activity).to_not be_nil
	end
  end
end
