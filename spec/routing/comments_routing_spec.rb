require 'spec_helper'
describe PostsController do

	describe "create comments" do
		it "routes to #create" do
			post('/posts/1/comments').should route_to("comments#create")
		end
		it "should provide the alias create_comments for post /comments" do
			create_comment_path.should == '/comments/new'
		end
	end

	
end

