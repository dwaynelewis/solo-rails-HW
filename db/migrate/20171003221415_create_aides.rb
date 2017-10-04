class CreateAides < ActiveRecord::Migration[5.1]
  def change
    create_table :aides do |t|
      t.string :name
      t.string :slack_name

      t.timestamps
    end
  end
end
