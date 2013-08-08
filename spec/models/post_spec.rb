# == Schema Information
#
# Table name: posts
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  body       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  post_date  :datetime
#

require 'spec_helper'

describe Post do
    before(:each) do
        @attr = {
            :title => "New Blog Post",
            :body => Lorem::Base.new(:paragraphs, 30).output
        }
    end

    it "should create a valid post" do
        Post.create!(@attr)
    end

    it "should not create a post without title" do
        p = Post.new(@attr.merge(:title => nil))
        p.should_not be_valid
    end


    it "should not create a post without body" do
        p = Post.new(@attr.merge(:body => nil))
        p.should_not be_valid
    end

    #--------------------------------- search ---------------------------------
    it "should correctly search" do
        Post.create!(@attr)
        ps = Post.search("Blog Post")
        ps.length.should == 1
        ps = Post.search("Blog Postttt")
        ps.length.should == 0
    end

    #-------------------------------- most_commented --------------------------
    describe "most_commented" do
        before(:each) do
            # Create test post and comments
            (1..5).each do |i|
                p = FactoryGirl.create(:post)
                (1..i).each do |j|
                    c = FactoryGirl.create(:comment, :post => p)
                end
                instance_variable_set("@post" + i.to_s, p)
            end
        end

        it "should returns correct posts (1)" do
            ps = Post.most_commented(1)
            ps.length.should == 1
            ps.include?(@post5).should be_true
        end

        it "should returns correct posts (3)" do
            ps = Post.most_commented(3)
            ps.length.should == 3
            ps.include?(@post5).should be_true
            ps.include?(@post4).should be_true
            ps.include?(@post3).should be_true
        end
    end

end
