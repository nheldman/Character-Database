class Image < ActiveRecord::Base
  belongs_to :character
  has_attached_file :image
end
