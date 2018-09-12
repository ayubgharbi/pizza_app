class Food < ApplicationRecord
	validates :title, :description, :image, presence: true
	validates :price, numericality: {greater_than_or_equal_to: 0.01}
	validates :title, uniqueness: true
	has_attached_file :image, styles: { large: "600x600>" }, 
		:path => ":rails_root/public/system/:image/:id/:style/:filename",
    	:url => "/system/:image/:id/:style/:filename"
  	validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end
