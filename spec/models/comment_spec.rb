# == Schema Information
#
# Table name: comments
#
#  id           :integer          not null, primary key
#  name         :string(255)
#  body         :text
#  post_id      :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  comment_date :datetime
#

require 'spec_helper'

describe Comment do
    before(:each) do
        @post = FactoryGirl.create(:post)
        @attr = {
            :name => "Guest",
            :body => Lorem::Base.new(:words, 30).output,
            :post => @post
        }
    end

    it "should create a valid comment" do
        Comment.create!(@attr)
    end

    it "should refuse comment without name" do
        c = Comment.create(@attr.merge(:name => nil))
        c.should_not be_valid
    end

    it "should refuse comment without body" do
        c = Comment.create(@attr.merge(:body => nil))
        c.should_not be_valid
    end

    it "should refuse comment without post" do
        c = Comment.create(@attr.merge(:post => nil))
        c.should_not be_valid
    end
end
