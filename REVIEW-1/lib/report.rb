class Report
  def grade_count(grades)
    raise ArgumentError, 'input must be a comma separated string' unless grades.is_a? String
    grades_array = grades.split(',')
    green_count = grades_array.count("Green")
    amber_count = grades_array.count("Amber")
    red_count = grades_array.count("Red")
    uncounted = 0
    grades_array.each do |grade|
      if grade != "Green" && grade != "Amber" && grade != "Red"
        uncounted += 1
      end
    end

    if green_count > 0 && amber_count > 0 && red_count > 0 &&
      return "Green = #{green_count}" +
      "\n Amber = #{amber_count}\n Red = #{red_count}\n Uncounted = #{uncounted}"
    elsif green_count > 0 && amber_count > 0 && red_count = 0


  end
end
