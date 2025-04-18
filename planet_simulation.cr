class Planet
  getter name : String
  getter distance_au : Float64

  def initialize(@name : String, @distance_au : Float64)
  end

  def orbital_period : Float64
    Math.sqrt(distance_au ** 3).round(2)
  end

  def describe
    "#{name} orbits at #{distance_au} AU – Period: #{orbital_period} Earth years"
  end
end

planets = [
  Planet.new("Mercury", 0.39),
  Planet.new("Earth", 1.0),
  Planet.new("Mars", 1.52)
]

planets.each { |planet| puts planet.describe }
