class Image < ActiveRecord::Base
has_attached_file :photo
belongs_to :beat
end



