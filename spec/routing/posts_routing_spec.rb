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

	describe "edit posts" do
		it "routes /posts/:id/edit to #edit for :id" do
			{ :get => "posts/1/edit" }.should route_to(
				:controller => "posts",
				:action => "edit",
				:id => "1"
			)
		end
	end
	
	describe "update posts" do
		it "routes put /posts/:id to #update for :id" do
			{ :put => "posts/1" }.should route_to(
				:controller => "posts",
				:action => "update",
				:id => "1"
			)
		end
	end

	describe "show posts" do
		it "routes get /posts/:id to #show for :id" do
			{ :get => "posts/1" }.should route_to(
				:controller => "posts",
				:action => "show",
				:id => "1"
			)
		end
	end

	describe "delete posts" do
		it "routes delete /posts/:id to #destroy for :id" do
			{ :delete => "posts/1" }.should route_to(
				:controller => "posts",
				:action => "destroy",
				:id => "1"
			)
		end
	end

	describe "search posts" do
		it "routes to #search" do
			get('/search').should route_to("posts#search")
		end
		it "should provide the alias post_path for /posts" do
			search_path.should == '/search'
		end
	end
end

