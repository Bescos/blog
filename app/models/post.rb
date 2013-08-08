class Post < ActiveRecord::Base
	has_many :comments, :dependent => :delete_all


	def self.search(search)
		if search
		  find(:all, :conditions => ['title OR body LIKE ?', "%#{search}%"])
		else
		  find(:all)
		end
	end


	def self.most_commented
		posts = Post.all
		max, max_index = 0;
		@max_comm = Array.new
		posts.each do |post|
			if post.comments.count > max
				max = post.comments.count	
				max_index = posts.index(post)
			end
		end	
		@max_comm.push(posts[max_index])
		posts.delete_at(max_index)
		
		max, max_index = 0;
		posts.each do |post|
			if post.comments.count > max
				max = post.comments.count	
				max_index = posts.index(post)
			end
		end	
		@max_comm.push(posts[max_index])
		posts.delete_at(max_index)

		return @max_comm
	end

end
