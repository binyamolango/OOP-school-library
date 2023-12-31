# Component Interface
class Nameable
  def correct_name
    raise NotImplementedError, "#{self.class} has not implemented method #{__method__}"
  end
end

# Base Decorator
class PersonDecorator < Nameable
  attr_accessor :nameable

  def initialize(nameable)
    super()
    @nameable = nameable
  end

  def correct_name
    @nameable.correct_name
  end
end

# Concrete Decorator
class CapitalizeDecorator < PersonDecorator
  def correct_name
    super.capitalize
  end
end

class TrimmerDecorator < PersonDecorator
  def correct_name
    name = super
    name.length > 10 ? name[0..9] : name
  end
end
