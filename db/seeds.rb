(1..5).each do |id|
    p = Post.create!(:title => "Post %i" % id,
                 :body => Lorem::Base.new(:paragraphs, 10).output )
    (1..id).each do |cid|
        Comment.create!(:name => "Guest %i" % cid,
                        :body => Lorem::Base.new(:words, 20).output,
                        :post => p)
    end
end


