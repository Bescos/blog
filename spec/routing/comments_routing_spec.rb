require 'spec_helper'
describe CommentsController do

	describe "create comments" do
		it "routes post /posts/1/comments to comments#create with id=1" do
			{ :post => "posts/1/comments" }.should route_to(
				:controller => "comments",
				:action => "create",
				:id => "1"
			)
		end
	end

	describe "delete comments" do
		it "routes delete /posts/1/comments/1 to comments#destroy with id=1" do
			{ :delete => "posts/1/comments/1" }.should route_to(
				:controller => "comments",
				:action => "destroy",
				:id => "1"
			)
		end
	end
end

