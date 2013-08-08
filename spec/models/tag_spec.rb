# == Schema Information
#
# Table name: tags
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'spec_helper'

describe Tag do
    before(:each) do
        @attr = {:name => "Tag Name" }
    end

    it "should accept valid params" do
        Tag.create!(@attr)
    end

    it "should not accept tag without name" do
        t = Tag.new(@attr.merge(:name => nil))
        t.should_not be_valid
    end
end

