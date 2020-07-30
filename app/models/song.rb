class Song < ApplicationRecord
    has_many :instruments, dependent: :destroy
end
