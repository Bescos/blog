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
			post 'create', @params
		end
		it "should redirect to the posts page" do
			post 'create', @params
			response.should redirect_to(posts_path)
		end
	end

	describe "GET 'edit'" do
		it "should render the template to edit the post" do
			get 'edit', "id"=>"1"
			response.should render_template(:edit)
		end
	end

	describe "PUT 'update'" do
		before(:each) do
			@p = double(Post)
			Post.stub(:find_by_id){@p}
			@p.stub(:update_attributes)
			@params = {:id=>1,:post =>{:title=>"title",:body=>"content"}}
		end
		it "should update the post" do
			Post.should_receive(:find_by_id)
			@p.should_receive(:update_attributes)
			put 'update', @params
			response.should redirect_to(posts_path)
		end
	end
end

