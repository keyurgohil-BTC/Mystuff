class Allergies

  ALLERGIES = { 1 => "eggs", 2 => "peanuts", 4 => "shellfish", 8 => "strawberries",
                16 => "tomatoes", 32 => "chocolate", 64 => "pollen", 128 => "cats"}.freeze

  def initialize(allergy_score)
    @allergy_score = allergy_score
  end

  def allergic_to?(allergy)
    @allergy_score >= ALLERGIES.key(allergy)
  end

  def list
    @allergy_score -= 256 if @allergy_score > 256

    ALLERGIES.to_a.reverse.to_h.
      select { |key,value| @allergy_score -= key if allergic_to?(value) }.
        collect {|key,value| value}.reverse
  end
end
