require 'spec_helper'

describe CommentsController do
	describe "POST 'posts'" do
		before(:each) do
			@p = stub_model(Post,:title=>"Test1",:body=>"Ceci est le test numero1")
			Post.stub(:find_by_id){@p}
			
			@c = double(Comment)
			@p.stub(:comments){@c}
			@c.stub(:create)

			@params = {:comment =>{:name=>"Me",:body=>"Comment1"},:post_id=>@p}
		end
		it "add the comment to the list of comments" do
			Post.should_receive(:find_by_id)
			@c.should_receive(:create)
			post 'create', @params
		end
		it "should redirect to the posts page" do
			post 'create', @params
			response.should redirect_to(@p)
		end
	end

	describe "DELETE 'destroy'" do
		before(:each) do
			@p = stub_model(Post,:title=>"Test1",:body=>"Ceci est le test numero1")
			Post.stub(:find_by_id){@p}
			
			@c = double(Comment)
			@p.stub(:comments){@c}
			@c.stub(:find){@c}
			@c.stub(:destroy)

			@params = {:comment =>{:name=>"Me",:body=>"Comment1",:comment_date=>"2013-03-16 16:23:05 +0100"},:post_id=>@p}
		end
		it "should destroy the comment" do
			@c.should_receive(:destroy)
			delete 'destroy'
		end
	end


end
