class Comment < ApplicationRecord
  acts_as_paranoid
  belongs_to :article
end
