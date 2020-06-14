# frozen_string_literal: true

class CreateMovies < ActiveRecord::Migration[6.0]
  def change
    create_table :movies do |t|
      t.string :title
      t.string :genre
      t.string :year
      t.numeric :rating

      t.timestamps
    end
  end
end
