measurements = File.read('1/input.txt').split("\n").map(&:to_i)

larger = 0
previous = 0

measurements.each do |measurement|
  larger += 1 if measurement > previous
  previous = measurement
end

larger - 1 # Exclude the first