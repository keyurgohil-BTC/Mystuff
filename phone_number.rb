class PhoneNumber

  def initialize(phone_number)
    @phone_number = phone_number
  end

  def number
    fails = "0000000000"
    return fails if @phone_number.gsub(/[^A-Za-z]/,'').length > 0
    phone_number = @phone_number.gsub(/\D/,'')
    case phone_number.length
    when 10
      phone_number
    when 11
      phone_number.slice(0).to_i == 1? phone_number[1..-1] : fails
    else
      fails
    end
  end

  def area_code
    number[0..2]
  end

  def to_s
    n = number
    "(#{n[0..2]}) #{n[3..5]}-#{n[6..9]}"
  end
end
