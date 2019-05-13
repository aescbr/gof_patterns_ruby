class CPU
  # Common CPU stuff...
end

class BasicCPU < CPU
  # Lots of not very fast CPU-related stuff...
  def to_s
    'Basic CPU'
  end
end

class TurboCPU < CPU
  # Lots of very fast CPU stuff...
  def to_s
    'Turbo CPU'
  end
end

class Motherboard
  attr_accessor :cpu
  attr_accessor :memory_size

  def initialize(cpu=BasicCPU.new, memory_size=1000)
    @cpu = cpu
    @memory_size = memory_size
  end

  def to_s
    puts "\nCPU: #{@cpu}"
    puts "\nMemory: #{@memory_size} MB"
  end
end

class Drive
  attr_reader :type # either :hard_disk, :cd or :dvd
  attr_reader :size # in MB
  attr_reader :writable # true if this drive is writable

  def initialize(type, size, writable)
    @type = type
    @size = size
    @writable = writable
  end

  def to_s
    puts "Drive: [#{@type}, #{@size} MB, writable: #{@writable}]"
  end
end
