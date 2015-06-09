# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Instructor.create!(last_name: 'Life', first_name: 'Hardknock', hire_date: Date.new(1978,12,20))

Student.create!(last_name: 'Cool', first_name: 'Joe', enrollment_date: Date.new(2014,6,1))
Student.create!(last_name: 'Hacker', first_name: 'Jane', enrollment_date: Date.new(2014,6,1))

Department.create!(name: 'Code Slinging', budget: 750, start_date: Date.new(2014,1,1), instructor_id: Instructor.last.id)

Course.create!(number: 101, title: 'The Joy of Code', credits: 3, department_id: Department.last.id)
Course.create!(number: 202, title: 'Zen Debugging', credits: 3, department_id: Department.last.id)

Department.create!(name: 'Cat Herding', budget: 50, start_date: Date.new(2014,1,1), instructor_id: Instructor.last.id)

Course.create!(number: 303, title: 'Message Spinning', credits: 3, department_id: Department.last.id)
Course.create!(number: 404, title: 'Ego Wrangling', credits: 3, department_id: Department.last.id)

Enrollment.create!(grade: 'A', student_id: Student.last.id, course_id: Course.first.id)
Enrollment.create!(grade: 'A', student_id: Student.last.id, course_id: Course.last.id)
Enrollment.create!(grade: 'B', student_id: Student.first.id, course_id: Course.first.id)
