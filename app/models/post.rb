# == Schema Information
#
# Table name: posts
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  body       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  post_date  :datetime
#

class Post < ActiveRecord::Base
    attr_accessible :title, :body, :post_date

    has_many :comments, :dependent => :delete_all

    validates :title, :presence => true
    validates :body, :presence => true

    #------------------------- Class methods ----------------------------------

    # Search posts based with given text in title or body
    # * *Params* :
    #   - search : text for the research
    # * *Returns* :
    #   - Array of posts (may be empty)
    def self.search(search)
        if search
            Post.where('title LIKE ? OR body LIKE ?', "%#{search}%", "%#{search}%")
        else
            Post.all
        end
    end

    # Return Posts with most comments
    # * *Params* :
    #   - limit : max number of posts
    # * *Returns* :
    #   - array of posts (max nb, may be less or empty)
    def self.most_commented(limit)
        ps = Post.includes(:comments).sort_by { |u| -u.comments.size }
        return ps[0..limit-1]
    end

end
