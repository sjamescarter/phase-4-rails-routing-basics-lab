class StudentsController < ApplicationController
  def index
    students = Student.all
    render json: students
  end

  def grades
    students = Student.all
    render json: students.order(grade: :desc)
  end

  def highest_grade
    students = Student.all
    render json: students.order(grade: :desc).first
  end
end
