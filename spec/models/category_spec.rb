# == Schema Information
#
# Table name: categories
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require 'spec_helper'

describe Category do
    before(:each) do
        @attr = {
            :name => "Cat Name"
        }
    end

    it "should accept valid params" do
        Category.create!(@attr)
    end

    it "should not accept category without name" do
        c = Category.new(@attr.merge(:name => nil))
        c.should_not be_valid
    end
end

