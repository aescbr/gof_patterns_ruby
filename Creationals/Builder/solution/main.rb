require_relative 'computer_builder'

builder = ComputerBuilder.new
builder.turbo
builder.add_cd(true)
builder.add_dvd
builder.add_hard_disk(100000)
builder.display(:lcd)

#Finally, you get the shiny new Computer instance from the builder
computer = builder.computer
puts "#{computer.to_s}"
