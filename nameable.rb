# Component Interface
class Nameable
  def correct_name
    raise NotImplementedError, "#{self.class} has not implemented method #{__method__}"
  end
end

# Base Decorator
class PersonDecorator < Nameable

end
