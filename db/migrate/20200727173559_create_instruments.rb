class CreateInstruments < ActiveRecord::Migration[6.0]
  def change
    create_table :instruments do |t|
      t.string :name
      t.string :instrument
      t.string :notes
      t.integer :octave
      t.belongs_to :song

      t.timestamps
    end
  end
end
