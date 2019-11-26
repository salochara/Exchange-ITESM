class AddTeacherRefToUsers < ActiveRecord::Migration[6.0]
  def change
    add_reference :users, :teacher, null: false, foreign_key: true
  end
end
