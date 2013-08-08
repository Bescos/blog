# == Schema Information
#
# Table name: comments
#
#  id           :integer          not null, primary key
#  name         :string(255)
#  body         :text
#  post_id      :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  comment_date :datetime
#

class Comment < ActiveRecord::Base
    attr_accessible :name, :body, :post_id, :post
    belongs_to :post

    validates :name, :presence => true
    validates :body, :presence => true
    validates :post_id, :presence => true
end
