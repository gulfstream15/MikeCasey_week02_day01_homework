require('minitest/autorun')
require('minitest/rg')  # prints the red and green output
require_relative('student')

class TestStudent < MiniTest::Test

  def test_student_name
    student = Student.new("Mike", 12) 
    assert_equal("Mike", student.get_student_name)
  end

  def test_cohort_number
    student = Student.new("Mike", 12) 
    assert_equal(12, student.get_cohort_number)
  end

  def test_student_set_name 
    student = Student.new("Mike", 12) 
    assert_equal("Mike", student.set_student_name("Mike"))
  end

  def test_student_set_cohort_number 
    student = Student.new("Mike", 12) 
    assert_equal(12, student.set_cohort_number(12))
  end

  def test_student_can_talk
    student = Student.new("Mike", 12) 
    assert_equal("I can talk!", student.student_can_talk)
  end

  def test_fav_language
    student = Student.new("Mike", 12) 
    assert_equal("I love Ruby", student.say_fav_language("Ruby"))
  end
 
end