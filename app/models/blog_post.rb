class BlogPost < ApplicationRecord

  #attr_accessor :title, :body

  has_many :comments, as: :commentable

end
