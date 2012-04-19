require 'spec_helper'
describe PostsController do
	describe "GET 'index'" do
		before(:each) do
			@posts = [stub_model(Post,:title => "1"), stub_model(Post, :title => "2")]
			Post.stub(:all){ @posts }
		end
		it "assigns a list of posts" do
			Post.should_receive(:all).and_return(@posts)
			get 'index'
			assigns(:posts).should eq @posts
			response.should be_success
		end
		it "renders the template list" do
			get 'index'
			response.should render_template(:index)
		end
	end
	describe "GET 'new'" do
		it "renders the form template" do
			get 'new'
			response.should render_template(:new)
		end
	end

	describe "POST 'posts'" do
		before(:each) do
			@p = double(Post)
			Post.stub(:new){@p}
			@p.stub(:save)
			@params = {:post =>{:title=>"title",:body=>"content"}}
		end
		it "add the post to the list of posts" do
				Post.should_receive(:new)
			post 'create',@params
		end
		
	end

end

