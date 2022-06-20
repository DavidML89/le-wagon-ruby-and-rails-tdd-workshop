require_relative "./check"
require_relative "./hello_tdd_world"

class HelloTddWorldTest < Check
  def check_returns_default_tdd_greeting
    is_equal?(HelloTddWorld.default, "Hello, TDD World!")
  end

  def check_returns_personalized_greeting
    is_equal?(HelloTddWorld.personalized('Mary'), "Hello Mary, TDD superstar!")
    is_equal?(HelloTddWorld.personalized('David'), "Hello David, TDD superstar!")
  end

  def check_returns_random_greeting
    expected_phrases = [
                         'Red - Green - Refactor, baby!',
                         'TDD will change your life!',
                         'I came in red, I saw green, I refactored. - Julius Cesar'
                       ]
    is_equal?(expected_phrases, HelloTddWorld.random)
  end
end
