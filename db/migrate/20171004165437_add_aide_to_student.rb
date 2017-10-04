class AddAideToStudent < ActiveRecord::Migration[5.1]
  def change
    add_reference :students, :aide, foreign_key: true
  end
end
