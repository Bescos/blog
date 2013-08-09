u = User.create!(:email => 'dev@example.org', :password => "developer", :password_confirmation => 'developer')

(1..5).each do |id|
    p = Post.create!(:title => "Post %i" % id,
                 :body => Lorem::Base.new(:paragraphs, 10).output,
                 :user => u)
    (1..id).each do |cid|
        Comment.create!(:name => "Guest %i" % cid,
                        :body => Lorem::Base.new(:words, 20).output,
                        :post => p)
    end
end



