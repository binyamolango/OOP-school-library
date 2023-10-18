# Component Interface
class Nameable
  def correct_name
    raise NotImplementedError, "#{self.class} has not implemented method #{__method__}"
  end
end

# Base Decorator
class PersonDecorator < Nameable
  def initialize(nameable)
    @nameable = nameable
  end

  def correct_name
    @nameable
  end
end
