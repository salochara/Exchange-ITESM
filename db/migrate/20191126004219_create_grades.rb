class CreateGrades < ActiveRecord::Migration[6.0]
  def change
    create_table :grades do |t|
      t.references :user, null: false, foreign_key: true
      t.references :course, null: false, foreign_key: true
      t.float :academic
      t.float :team_work
      t.float :communication

      t.timestamps
    end
  end
end
