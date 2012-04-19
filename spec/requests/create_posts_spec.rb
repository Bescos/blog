require 'spec_helper'

describe "CreatePosts" do
  describe "GET /posts/new" do
    it "create a new post" do
      visit new_post_path
			page.should have_content 'Form to create a new post'	
		  fill_in 'Title', :with => 'Test1'
			fill_in 'Body', :with => 'Ceci est le test numero 1'
			click_button 'Create'
			current_path.should == posts_path
    end
  end
end
