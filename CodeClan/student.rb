class Student

  
  def initialize(student_name, cohort_number)
    @student_name = student_name
    @cohort_number = cohort_number
  end
  
  def get_student_name
    return @student_name
  end

  def get_cohort_number
    return @cohort_number
  end

  def set_student_name(student_name)
    @student_name = student_name
  end

  def set_cohort_number(cohort_number)
    @cohort_number = cohort_number
  end

  def student_can_talk
    return "I can talk!"
  end

  def say_fav_language(fav_language)
    return "I love " + fav_language
  end

end