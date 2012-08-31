class Comment < ActiveRecord::Base
    attr_accessible :body, :author
    belongs_to :post

    validates :author,
        :presence => true,
        :length => { :minimum => 3 }

    validates :body,
        :presence => true,
        :length => { :minimum => 3 }
end
