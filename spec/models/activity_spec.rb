require 'spec_helper'

describe Activity do
    let!(:activity) { build(:activity) }

    it 'instantiates an Activity' do
      expect(activity.class.name).to eq("Activity")
    end

    it "is invalid without a name" do
      expect(build(:activity, name: nil)).to_not be_valid
    end

    it "is invalid without a photo url" do
      expect(build(:activity, photoUrl: nil)).to_not be_valid
    end

    it "is invalid without a link" do
      expect(build(:activity, link: nil)).to_not be_valid
    end

    it "is invalid without a latitude" do
      expect(build(:activity, lat: nil)).to_not be_valid
    end

    it "is invalid without a longitude" do
      expect(build(:activity, long: nil)).to_not be_valid
    end

    it "is associated with categories" do
      activity = create(:activity, :with_categories)
      expect(activity.categories.length).to eq(5)
    end
end
