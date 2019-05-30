class User < ApplicationRecord
	validates :uname, { presence: true }
	validates :password, { presence: true }
	validates :name, { presence: true }
end
