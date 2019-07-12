class Article < ApplicationRecord
  acts_as_paranoid
	has_many :comments, dependent: :nullify
	validates :title, presence: true,
                    length: { minimum: 5 }
end
