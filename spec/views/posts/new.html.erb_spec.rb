require 'spec_helper'

describe "posts/new.html.erb" do
  it "displays the form to create a new post" do
		render
		rendered.should =~ /Form to create a new post/
		rendered.should =~ /Title/
		rendered.should =~ /Body/
	end
end
