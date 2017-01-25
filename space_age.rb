class SpaceAge
  EARTH = 31557600.00
  @space = {"earth" => 1,
            "mercury" => 0.2408467,
            "venus" => 0.61519726,
            "mars" => 1.8808158,
            "jupiter" => 11.862615,
            "saturn" => 29.447498,
            "uranus" => 84.016846,
            "neptune" => 164.79132
          }
  def initialize(given_seconds)
    @given_seconds = given_seconds
  end

  def seconds
    @given_seconds
  end

  @space.each do |planet,planet_period|
    define_method("on_#{planet}") do
      (@given_seconds / (EARTH * planet_period)).round(2)
    end
  end
end
