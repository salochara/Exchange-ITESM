class Grade < ApplicationRecord
  belongs_to :user
  belongs_to :course

  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      grades_hash = row.to_hash
      grades = find_or_create_by!(course_id: grades_hash['course_id'], user_id: grades_hash['user_id'], communication: grades_hash['communication'], academic: grades_hash['academic'], team_work: grades_hash[' team_work'] )
      grades.update_attributes(grades_hash)
    end
  end
end

