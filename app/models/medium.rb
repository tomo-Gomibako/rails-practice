class Medium < ApplicationRecord
	validates :title, { presence: true }
	validates :medium, { presence: true }
	mount_uploader :medium, ImageUploader
end
