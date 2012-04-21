require 'spec_helper'

describe "ShowPosts" do
  describe "GET /posts/:id" do
		before(:each) do
			@post = Post.create(:title => "Test1", :body => "Ceci est le test numero 1")
		end
    it "should show he content of the post" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit post_path(@post)
      page.should have_content 'View of the post'
			page.should have_content 'Test1'
			page.should have_content 'Ceci est le test numero 1'
    end
  end
end
