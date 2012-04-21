require 'spec_helper'

describe "DeletePosts" do
  describe "DELETE /posts/:id" do
		before(:each) do
			@post = Post.create(:title => "Test1", :body => "Ceci est le test numero 1")
		end
    it "delete an existing post" do
      visit posts_path(@post)
			click_link "Delete"
			current_path.should == posts_path
			page.should_not have_content 'Test1'
    end
  end
end
