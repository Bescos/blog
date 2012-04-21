require 'spec_helper'

describe "CreateComments" do
  describe "POST /posts/:id/comments" do
		before(:each) do
			@post = Post.create(:title => "Test1", :body => "Ceci est le test numero 1")
		end
    it "create a new comment" do
      visit post_path(@post)
      page.should have_content 'Add a comment'	
		  fill_in 'Name', :with => 'Anne O Nymous'
			fill_in 'Body', :with => 'Mon 1er commentaire'
			click_button 'Add'
			current_path.should == post_path(@post)
			page.should have_content 'Anne O Nymous'
			page.should have_content 'Mon 1er commentaire'
    end
  end
end
