class Post < ActiveRecord::Base
    attr_accessible :body, :title
    has_many :comments

    validates :title,
        :presence => true,
        :length => { :minimum => 4 },
        :uniqueness => true

    validates :body,
        :presence => true,
        :length => { :minimum => 4 }
end
