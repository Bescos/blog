require 'spec_helper'

describe "DeleteComments" do
  describe "DELETE /posts/:id/comments/:id" do
   before(:each) do
			@post = Post.create(:title => "Test1", :body => "Ceci est le test numero 1")
			@comment = @post.comments.create(:name=>"Me", :body=>"Comment1",:post_id=>@post.id)
		end
    it "delete an existing post" do
      visit post_path(@post)
			click_button "Delete"
			current_path.should == post_path(@post)
			page.should_not have_content @comment.name
			page.should_not have_content @comment.body
    end
  end
end
