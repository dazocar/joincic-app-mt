class JoincicsController < ApplicationController


  def index
  end

  def show_schools
    @schools = []
    data = get_schools

    data.each do |school_data|
      @schools << School.new(school_data.except('students'))
    end
  end

  def show_school_students
    school_id = params[:id]
    @school = School.find(school_id)
    @students = []

    data = get_students(school_id)
    data.each do |student_data|
      @students << Person.new(student_data.slice('first_name', 'last_name', 'email'))
    end
  end

  def show_active_students
    country_id = params[:id]
    case country_id.to_i
    when 138
      @country_name = "Perú"
    when 186
      @country_name = "USA"
    when 191
      @country_name = "Venezuela"
    end

    @students = []

    # TO DO

  end
end
