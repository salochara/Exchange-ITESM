require 'faker'



#Student.destroy_all
User.destroy_all
Teacher.destroy_all
Course.destroy_all
Grade.destroy_all


p "Seeding the DB"



# Teachers
Teacher.create!(name: "Carlos Vega",email: "carlos@tec.mx",password:123456)


# Students
User.create!(name: "Eugenio Leal",teacher: Teacher.first,email: "euge@tec.mx",password: 123456)
User.create!(name: "Salo Charabati",teacher: Teacher.first,email: "salo@tec.mx",password: 123456)

=begin
Student.create!(name: "Salomón Charabati",teacher: Teacher.first)
Student.create!(name: "Enrique Vadillo",teacher: Teacher.first)
Student.create!(name: Faker::Name.name,teacher: Teacher.first)
Student.create!(name: Faker::Name.name,teacher: Teacher.first)
Student.create!(name: Faker::Name.name,teacher: Teacher.first)
Student.create!(name: Faker::Name.name,teacher: Teacher.first)
Student.create!(name: Faker::Name.name,teacher: Teacher.first)
Student.create!(name: Faker::Name.name,teacher: Teacher.first)
Student.create!(name: Faker::Name.name,teacher: Teacher.first)
Student.create!(name: Faker::Name.name,teacher: Teacher.first)
Student.create!(name: Faker::Name.name,teacher: Teacher.first)
Student.create!(name: Faker::Name.name,teacher: Teacher.first)
Student.create!(name: Faker::Name.name,teacher: Teacher.first)
Student.create!(name: Faker::Name.name,teacher: Teacher.first)
Student.create!(name: Faker::Name.name,teacher: Teacher.first)=end
=end

# Courses
Course.create!(name: "Architecture")
Course.create!(name: "Advanced Programming")
Course.create!(name: "Business Intelligence")
Course.create!(name: Faker::Educator.course_name)
Course.create!(name: Faker::Educator.course_name)
Course.create!(name: Faker::Educator.course_name)

# Grades
Grade.create!(user: User.first, course: Course.first, academic: 80, team_work: 90, communication: 100)
Grade.create!(user: User.first, course: Course.second, academic: 100, team_work: 90, communication: 100)
Grade.create!(user: User.first, course: Course.third, academic: 78, team_work: 90, communication: 100)

=begin
Grade.create!(student: Student.second, course: Course.first, grade: 90)
Grade.create!(student: Student.second, course: Course.second, grade: 98)
Grade.create!(student: Student.second, course: Course.third, grade: 86)

Grade.create!(student: Student.third, course: Course.first, grade: 83)
Grade.create!(student: Student.third, course: Course.second, grade: 100)
Grade.create!(student: Student.third, course: Course.third, grade: 89)
=end


#p "Finishing seeding the DB with #{Teacher.all.count} teachers, #{Student.all.count} students, #{Course.all.count} courses and #{Grade.all.count} grades"



