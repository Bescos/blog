require 'spec_helper'

describe "EditPosts" do
  describe "GET /posts/:id/edit" do
		before(:each) do
			@post = Post.create(:title => "Test1", :body => "Ceci est le test numero 1 une fois Edited")
		end
    it "Edit an existing post" do
      visit edit_post_path(@post)
			page.should have_content 'Edit the post'	
		  fill_in 'Title', :with => 'Test1Edited'
			fill_in 'Body', :with => 'Ceci est le test numero 1 une fois Edited'
			click_button 'Edit'
			current_path.should == posts_path
    end
  end
end
