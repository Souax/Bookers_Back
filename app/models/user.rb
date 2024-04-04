class User < ApplicationRecord
    has_one_attached :image
    validates :email, presence: true, uniqueness: { case_sensitive: false }
end
