class Computer
  attr_accessor :display
  attr_accessor :motherboard
  attr_reader   :drives

  def initialize(display=:crt, motherboard=Motherboard.new, drives=[])
    @motherboard = motherboard
    @drives = drives
    @display = display
  end

  def to_s
    puts '---COMPUTER---'
    puts @motherboard.to_s
    @drives.each do |drive|
      puts drive.to_s
    end
    puts  "Display:  #{@display.to_s}"
  end
end
