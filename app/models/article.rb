class Article < ApplicationRecord

    belongs_to :category

    validates_presence_of :content, :title

    scope :alphabetical,  -> { order(:title) }
    scope :active,  -> { where(:active) }


end
