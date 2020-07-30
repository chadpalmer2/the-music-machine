class Instrument < ApplicationRecord
    serialize :notes, JSON
    belongs_to :song
end
