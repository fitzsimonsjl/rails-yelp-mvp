class ChangesRatingsName < ActiveRecord::Migration[5.2]
  def change
    rename_column(:reviews, :ratings, :rating)
  end
end
