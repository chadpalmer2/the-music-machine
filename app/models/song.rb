class Song < ApplicationRecord
    has_many :instruments, dependent: :destroy
    accepts_nested_attributes_for :instruments
end
