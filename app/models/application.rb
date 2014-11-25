class Application  < ActiveRecord::Base
	validates :why_us, presence: true,
	length: { minimum: 5 }
	validates :computer_experiences, presence: true,
	length: { minimum: 5 }
	validates :email, presence: true,
	length: { minimum: 5 }
	validates :name, presence: true,
	length: { minimum: 5 }
end
