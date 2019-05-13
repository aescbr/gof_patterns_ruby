require_relative 'pond'
require_relative 'frog'
require_relative '../duck'

class DuckPond < Pond
   
  def new_animal(name)
    Duck.new(name)
  end
end
   
class FrogPond < Pond
   
  def new_animal(name)
    Frog.new(name)
  end
end