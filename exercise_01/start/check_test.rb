require_relative './check'

class CheckTest < Check
  def check_1_is_equal_1
    is_equal?(1, 1)
  end

  def check_nil_is_not_equal_false
    is_equal?(nil, false)
  end

  def check_string_is_equal_string
    is_equal?("string", "string")
  end

  def check_0_is_not_equal_nil
    is_equal?(0, nil)
  end
end
