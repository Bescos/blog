require 'spec_helper'
describe PostsController do
	describe "posts" do
		it "routes to #index" do
			get('/posts').should route_to("posts#index")
		end
		it "should provide the alias post_path for /posts" do
			posts_path.should == '/posts'
		end
	end

	describe "create posts" do
		it "routes to #new" do
			get('/posts/new').should route_to("posts#new")
		end
		it "should provide the alias post_path for /posts" do
			new_post_path.should == '/posts/new'
		end
	end
end

