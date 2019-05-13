require_relative '../computer'
require_relative '../components'

# Build a fast computer with lots of memory...
motherboard = Motherboard.new(TurboCPU.new, 4000)

# ...and a hard drive, a CD writer, and a DVD
drives = []
drives << Drive.new(:hard_drive, 200000, true)
drives << Drive.new(:cd, 760, true)
drives << Drive.new(:dvd, 4700, false)

computer = Computer.new(:lcd, motherboard, drives)
puts "#{computer.to_s}"
